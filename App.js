import React from 'react';
import { createStackNavigator } from '@react-navigation/stack';
import { NavigationContainer } from '@react-navigation/native';
import LoginScreen from './src/screens/LoginScreen';
import RegisterScreen from './src/screens/RegisterScreen';
import Home from './src/screens/Home';
import AdminScreen from './src/Admin/AdminScreen';
import details from './src/screens/details';
import TabNavigator from './src/navigators/TabNavigator'; // TabNavigator

import Contact from './src/screens/Contact';
const Stack = createStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Login" screenOptions={{ headerShown: false }}>
        {/* Stack Screens */}
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="Register" component={RegisterScreen} />
        <Stack.Screen name="Home" component={Home} />
        <Stack.Screen name="Contact" component={Contact} />
        <Stack.Screen name="AdminScreen" component={AdminScreen} />
        <Stack.Screen name="details" component={details} />
        {/* เมื่อผู้ใช้ล็อกอินแล้ว ให้ใช้ TabNavigator */}
        <Stack.Screen name="TabNavigator" component={TabNavigator} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
