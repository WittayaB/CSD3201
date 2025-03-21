import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Alert } from 'react-native';
import axios from 'axios';

export default function LoginScreen({ navigation }) {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = async () => {
    if (username === '' || password === '') {
      Alert.alert('กรุณากรอกข้อมูลให้ครบ');
      return;
    }

    try {
      const response = await axios.post('http://192.168.1.41/dream_jobs/API/login.php', {
        name: username,
        password: password,
      });

      if (response.data.message) {
        Alert.alert('เข้าสู่ระบบสำเร็จ');
        const role = response.data.role || "user"; // ถ้าไม่มีค่า role ให้ใช้ "user"

        // เช็คว่าเป็นแอดมินหรือไม่
        if (role === 'admin') {
          navigation.replace('AdminScreen'); // ไปที่หน้า Admin ถ้าเป็นแอดมิน
        } else {
          navigation.replace('Home'); // ไปที่หน้า Home ถ้าเป็นผู้ใช้ทั่วไป
        }
      } else {
        Alert.alert(response.data.error);
      }
    } catch (error) {
      console.error(error);
      Alert.alert('เกิดข้อผิดพลาดในการเข้าสู่ระบบ');
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>เข้าสู่ระบบ</Text>
      <TextInput
        placeholder="Username"
        value={username}
        onChangeText={setUsername}
        style={styles.input}
      />
      <TextInput
        placeholder="Password"
        value={password}
        onChangeText={setPassword}
        secureTextEntry
        style={styles.input}
      />
      <TouchableOpacity onPress={handleLogin} style={styles.button}>
        <Text style={styles.buttonText}>เข้าสู่ระบบ</Text>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigation.navigate('Register')}>
        <Text style={styles.registerText}>ยังไม่มีบัญชี? สมัครสมาชิก</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#DDEFF0',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  input: {
    width: '80%',
    padding: 10,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#aaa',
    borderRadius: 5,
    backgroundColor: '#fff',
  },
  button: {
    backgroundColor: '#28A745',
    padding: 10,
    borderRadius: 5,
    width: '80%',
    alignItems: 'center',
    marginTop: 10,
  },
  buttonText: {
    color: '#fff',
    fontSize: 18,
  },
  registerText: {
    marginTop: 10,
    color: '#007BFF',
  },
});
