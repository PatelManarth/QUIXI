import React from 'react';
import { View, StyleSheet } from 'react-native';
import { Button, SocialIcon, Text } from 'react-native-elements';

export default function EnterPhoneNumber() {
  return (
    <View>
        <Text>Terms of use   Privacy Policy</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  button: {
    backgroundColor: 'red',
    width: 300,
    marginVertical: 10,
  },
  buttonOutline: {
    borderColor: 'red',
    width: 300,
    marginVertical: 10,
  },
  socialContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    width: 200,
    marginTop: 20,
  },
});
