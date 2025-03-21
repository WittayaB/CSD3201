import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Alert, Image } from 'react-native';
import axios from 'axios';
import * as ImagePicker from 'expo-image-picker';
import AsyncStorage from '@react-native-async-storage/async-storage';

export default function AdminScreen({ navigation }) {
  const [nameTh, setNameTh] = useState('');
  const [nameEn, setNameEn] = useState('');
  const [description, setDescription] = useState('');
  const [skill, setSkill] = useState('');
  const [feature, setFeature] = useState('');
  const [image, setImage] = useState(null);

  // ฟังก์ชันเลือกรูปภาพ
  const pickImage = async () => {
    let result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      allowsEditing: true,
      aspect: [4, 3],
      quality: 1,
    });

    if (!result.canceled) {
      setImage(result.assets[0]);
    }
  };

  // ฟังก์ชันเพิ่มข้อมูลลงฐานข้อมูล
  const handleAddItem = async () => {
    if (!nameTh || !nameEn || !description || !skill || !feature) {
      Alert.alert('กรุณากรอกข้อมูลให้ครบ');
      return;
    }

    const formData = new FormData();
    formData.append('name_th', nameTh);
    formData.append('name_en', nameEn);
    formData.append('description', description);
    formData.append('skill', skill);
    formData.append('feature', feature);

    if (image) {
      const imageType = image.uri.split('.').pop(); // ดึงชนิดของไฟล์จาก URL
      const imageName = `upload.${imageType}`;
      
      formData.append('image', {
        uri: image.uri,
        type: `image/${imageType}`,
        name: imageName,
      });
    }
   
    try {
      const response = await axios.post('http://192.168.1.41/dream_jobs/API/add_item.php', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });

      if (response.data.success) {
        Alert.alert('เพิ่มข้อมูลสำเร็จ');
        setNameTh('');
        setNameEn('');
        setDescription('');
        setSkill('');
        setFeature('');
        setImage(null);
      } else {
        Alert.alert('เกิดข้อผิดพลาด: ' + response.data.error);
      }
    } catch (error) {
      console.error(error);
      Alert.alert('เกิดข้อผิดพลาดในการเชื่อมต่อเซิร์ฟเวอร์');
    }
  };

  // ฟังก์ชันออกจากระบบ
  const handleLogout = async () => {
    try {
      await AsyncStorage.removeItem('userToken'); // ลบ Token
      navigation.replace('Login'); // พากลับไปที่หน้า Login
    } catch (error) {
      console.error('เกิดข้อผิดพลาดในการออกจากระบบ:', error);
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>เพิ่มข้อมูลอาชีพ</Text>
      <TextInput placeholder="ชื่ออาชีพ (ไทย)" value={nameTh} onChangeText={setNameTh} style={styles.input} />
      <TextInput placeholder="ชื่ออาชีพ (อังกฤษ)" value={nameEn} onChangeText={setNameEn} style={styles.input} />
      <TextInput placeholder="คำอธิบายอาชีพ" value={description} onChangeText={setDescription} style={styles.input} multiline />
      <TextInput placeholder="ทักษะที่ต้องมี" value={skill} onChangeText={setSkill} style={styles.input} multiline />
      <TextInput placeholder="คุณสมบัติ" value={feature} onChangeText={setFeature} style={styles.input} multiline />

      <TouchableOpacity onPress={pickImage} style={styles.button}>
        <Text style={styles.buttonText}>เลือกรูปภาพ</Text>
      </TouchableOpacity>

      {image && <Image source={{ uri: image.uri }} style={styles.image} />}

      <TouchableOpacity onPress={handleAddItem} style={styles.button}>
        <Text style={styles.buttonText}>เพิ่มข้อมูล</Text>
      </TouchableOpacity>

      {/* ปุ่มออกจากระบบ */}
      <TouchableOpacity onPress={handleLogout} style={styles.logoutButton}>
        <Text style={styles.buttonText}>ออกจากระบบ</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    justifyContent: 'center',
    backgroundColor: '#f8f9fa',
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  input: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 5,
    padding: 10,
    marginBottom: 10,
    backgroundColor: '#fff',
  },
  button: {
    backgroundColor: '#007bff',
    padding: 12,
    borderRadius: 5,
    alignItems: 'center',
    marginTop: 10,
  },
  logoutButton: {
    backgroundColor: '#dc3545', // สีแดง
    padding: 12,
    borderRadius: 5,
    alignItems: 'center',
    marginTop: 20,
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
  },
  image: {
    width: '100%',
    height: 150,
    marginTop: 10,
    borderRadius: 5,
  },
});
