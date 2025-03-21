import React, { useEffect, useState } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, StyleSheet } from 'react-native';
import axios from 'axios';

export default function DeleteUserScreen() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    try {
      const response = await axios.get('http://192.168.1.41/dreamjobs/API/get_users.php');
      setUsers(response.data);
    } catch (error) {
      Alert.alert('เกิดข้อผิดพลาดในการโหลดข้อมูล');
    }
  };

  const handleDelete = async (id) => {
    try {
      const response = await axios.post('http://192.168.1.41/dreamjobs/API/delete_user.php', { id });
      if (response.data.success) {
        Alert.alert('ลบผู้ใช้สำเร็จ');
        fetchUsers();
      } else {
        Alert.alert('ไม่สามารถลบผู้ใช้ได้');
      }
    } catch (error) {
      Alert.alert('เกิดข้อผิดพลาด');
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>ลบผู้ใช้</Text>
      <FlatList
        data={users}
        keyExtractor={(item) => item.id.toString()}
        renderItem={({ item }) => (
          <View style={styles.userRow}>
            <Text>{item.name} ({item.email})</Text>
            <TouchableOpacity onPress={() => handleDelete(item.id)} style={styles.deleteButton}>
              <Text style={styles.deleteText}>ลบ</Text>
            </TouchableOpacity>
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f8f9fa',
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  userRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 10,
    borderBottomWidth: 1,
    borderColor: '#ccc',
  },
  deleteButton: {
    backgroundColor: '#ff4444',
    padding: 8,
    borderRadius: 5,
  },
  deleteText: {
    color: '#fff',
  },
});
