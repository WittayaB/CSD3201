import React from 'react';
import { View, Text, Image, ScrollView, StyleSheet, TouchableOpacity } from 'react-native';

export default function DetailsScreen({ route, navigation }) {
  const { itemName, itemName1, synopsis, skill, feature, image, image2, image3 } = route.params;

  return (
    <View style={styles.container}>
      <ScrollView contentContainerStyle={styles.scrollViewContent}>
        {/* ส่วนหัว */}
        <View style={styles.imageContainer}>
        <Image source={{ uri: `http://192.168.1.41/dream_jobs/API/image/${image}` }} style={styles.mainImage} />
        <Text style={styles.title}>{itemName}</Text>
          <Text style={styles.subtitle}>{itemName1}</Text>
        </View>

        {/* การ์ดอธิบายอาชีพ */}
        <View style={styles.card}>
          <Text style={styles.cardTitle}>รู้จักอาชีพ</Text>
          <Text style={styles.cardText}>{synopsis}</Text>
        </View>

        {/* การ์ดทักษะ (Skills) */}
        <View style={styles.card}>
          <View style={styles.centerContent}>
            <Image source={image2} style={styles.icon} />
            <Text style={styles.cardTitle}>Skills</Text>
          </View>
          <Text style={[styles.cardText, styles.textSpacing]}>
            {skill.split(',').join('\n')}
          </Text>
        </View>

        {/* การ์ดคุณสมบัติที่เหมาะสม */}
        <View style={styles.card}>
          <View style={styles.centerContent}>
            <Image source={image3} style={styles.icon} />
            <Text style={styles.cardTitle}>คุณสมบัติที่เหมาะสม</Text>
          </View>
          <Text style={[styles.cardText, styles.textSpacing]}>
            {feature.split(',').join('\n')}
          </Text>
        </View>
      </ScrollView>

      {/* Footer นำทาง */}
      <View style={styles.footer}>
        <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Home')}>
          <Text style={styles.buttonText}>Home</Text>
        </TouchableOpacity>

        <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Contact')}>
          <Text style={styles.buttonText}>Contact</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#DDEFF0',
  },
  scrollViewContent: {
    paddingBottom: 80,
  },
  imageContainer: {
    alignItems: 'center',
    marginBottom: 20,
  },
  mainImage: {
    width: 120,
    height: 120,
    borderRadius: 60,
    marginBottom: 10,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 18,
    color: '#777',
    textAlign: 'center',
    marginBottom: 10,
  },
  card: {
    backgroundColor: '#FADADD',
    padding: 20,
    borderRadius: 10,
    marginBottom: 15,
  },
  cardText: {
    fontSize: 16,
    lineHeight: 24,
  },
  textSpacing: {
    marginTop: 10,
  },
  centerContent: {
    flexDirection: 'column',
    alignItems: 'center',
    marginBottom: 10,
  },
  icon: {
    width: 50,
    height: 50,
    borderRadius: 10,
    marginBottom: 5,
  },
  cardTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
    marginBottom: 5,
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
  },
  buttonText: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
  },
});
