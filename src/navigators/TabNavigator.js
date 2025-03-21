import React from 'react';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { useNavigation } from '@react-navigation/native';
import { StyleSheet, View, TouchableOpacity, Text } from 'react-native';
import HomeScreen from '../screens/Home';
import Contact from '../screens/Contact';
import Details from '../screens/details';
import RegisterScreen from '../screens/RegisterScreen';
import AdminScreen from '../Admin/AdminScreen';

const Tab = createBottomTabNavigator();

function CustomTabBar({ navigation }) {
  return (
    <View style={styles.footer}>
      <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Home')}>
        <Text style={styles.buttonText}>Home 🏠</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Contact')}>
        <Text style={styles.buttonText}>Contact 📞</Text>
      </TouchableOpacity>
 
    </View> 
  );
}

export default function TabNavigator() {
  return (
    <Tab.Navigator
      screenOptions={{ headerShown: false }}
      tabBar={(props) => <CustomTabBar {...props} />}
    >
      <Tab.Screen name="Home" component={HomeScreen} />
      <Tab.Screen name="Contact" component={Contact} />
      <Tab.Screen name="Details" component={Details} />
      <Tab.Screen name="Register" component={RegisterScreen} />
      <Tab.Screen name="Admin" component={AdminScreen} />
    </Tab.Navigator>
  );
}

const styles = StyleSheet.create({
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
    width: '100%',
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
