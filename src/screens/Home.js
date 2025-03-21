import React, { useEffect, useState } from "react";
import { 
  View, Text, StyleSheet, Image, ScrollView, TouchableOpacity 
} from "react-native";
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function Home({ navigation }) {
  const [jobs, setJobs] = useState([]);
  const [likedJobs, setLikedJobs] = useState({});

  useEffect(() => {
    const fetchJobs = async () => {
      try {
        const response = await axios.get('http://192.168.1.41/dream_jobs/API/get_jobs.php'); 
        setJobs(response.data);  

        // Initializing the liked jobs state from AsyncStorage
        const storedLikes = await AsyncStorage.getItem('likedJobs');
        if (storedLikes) {
          setLikedJobs(JSON.parse(storedLikes));  // Parse the saved liked jobs
        } else {
          const initialLikes = {};
          response.data.forEach(job => {
            initialLikes[job.id] = job.is_liked || false;  // Assume the backend provides "is_liked"
          });
          setLikedJobs(initialLikes);
        }

      } catch (error) {
        console.error(error);
      }
    };
    fetchJobs();
  }, []);  

  const handleLike = async (jobId) => {
    const isLiked = !likedJobs[jobId]; // Toggle the like status
    const newLikedJobs = {
      ...likedJobs,
      [jobId]: isLiked,
    };

    try {
      const response = await axios.post('http://192.168.1.41/dream_jobs/API/like_job.php', {
        job_id: jobId,
        user_id: 1, // ใส่รหัสผู้ใช้ที่เข้าสู่ระบบจริง
        is_liked: isLiked,
      });

      if (response.data.success) {
        // Update liked status in local state
        setLikedJobs(newLikedJobs);

        // Save the updated liked jobs to AsyncStorage
        await AsyncStorage.setItem('likedJobs', JSON.stringify(newLikedJobs));
      }
    } catch (error) {
      console.error(error);
    }
  };

  const handleLogout = () => {
    navigation.navigate('Login');
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>แนะนำอาชีพ</Text>

      <ScrollView horizontal contentContainerStyle={styles.imageRow}>
        {jobs.map((job, index) => (
          <Image 
            key={index} 
            source={{ uri: `http://192.168.1.41/dream_jobs/image/${job.image}` }} 
            style={styles.smallImage} 
          />
        ))}
      </ScrollView>

      <ScrollView contentContainerStyle={styles.scrollContainer}>
        {jobs.map((job, index) => (
          <View key={index} style={styles.itemContainer}>
            <TouchableOpacity 
              style={styles.item}
              onPress={() => navigation.navigate('details', {
                itemName: job.name_th,
                itemName1: job.name_en,
                synopsis: job.description,
                skill: job.skill,
                feature: job.feature,
                image: { uri: `http://192.168.1.41/dream_jobs/image/${job.image}` },
                image2: { uri: `http://192.168.1.41/dream_jobs/image/skill.png` }, 
                image3: { uri: `http://192.168.1.41/dream_jobs/image/feature.png` },
              })}
            >
              <Image source={{ uri: `http://192.168.1.41/dream_jobs/API/image/${job.image}` }} style={styles.icon} />
              <Text style={styles.itemText}>{job.name_th}</Text>
            </TouchableOpacity>

            {/* ปุ่มหัวใจ */}
            <TouchableOpacity
              style={[styles.likeButton, likedJobs[job.id] ? styles.liked : styles.unliked]}
              onPress={() => handleLike(job.id)}
            >
              <Text style={styles.likeText}>{likedJobs[job.id] ? '❤️' : '🤍'}</Text>
            </TouchableOpacity>
          </View>
        ))}
      </ScrollView>

      <View style={styles.footer}>
        <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Home')}>
          <Text style={styles.buttonText}>Home</Text>
        </TouchableOpacity>

        <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Contact')}>
          <Text style={styles.buttonText}>Contact</Text>
        </TouchableOpacity>

        <TouchableOpacity style={styles.button} onPress={handleLogout}>
          <Text style={styles.buttonText}>ออกจากระบบ</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#DDEFF0",
    padding: 20,
  },
  header: {
    marginTop: 30,
    fontSize: 22,
    fontWeight: "bold",
    textAlign: "center",
    marginBottom: 10,
  },
  imageRow: {
    flexDirection: "row",
    justifyContent: "space-evenly",
    marginTop: 23,
    marginBottom: 40,
    gap: 20,
  },
  smallImage: {
    width: 80,
    height: 80,
    borderRadius: 10,
    marginBottom: 40,
    paddingHorizontal: 70,
  },
  scrollContainer: {
    paddingBottom: 100,
  },
  itemContainer: {
    position: 'relative',
  },
  item: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: "#FADADD",
    padding: 15,
    borderRadius: 10,
    marginBottom: 10,
  },
  icon: {
    width: 50,
    height: 50,
    borderRadius: 25,
    marginRight: 15,
  },
  itemText: {
    fontSize: 18,
    fontWeight: "bold",
  },
  likeButton: {
    position: 'absolute',
    top: 15,
    right: 10,
    padding: 10,
  },
  unliked: {
    color: '#bbb',
  },
  liked: {
    color: 'red',
  },
  likeText: {
    fontSize: 24,
  },
  footer: {
    flexDirection: 'row',
    justifyContent: 'space-evenly',
    alignItems: 'center',
    paddingVertical: 15,
    borderTopWidth: 1,
    borderColor: '#ccc',
    backgroundColor: '#DDEFF0',
    position: 'absolute',
    bottom: 0,
    width: '110%',
    height: 70,
  },
  button: {
    backgroundColor: '#FEE2E2',
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 10,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
    shadowRadius: 3,
    elevation: 5,
  },
  buttonText: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
  },
});
