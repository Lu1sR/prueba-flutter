import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flash_chat/screens/loading_screen.dart';
import 'dart:convert';

class AuthService {
  static void signupUser(
      BuildContext context, String name, String email, String password) async {}

  static void logOut(BuildContext context) {
    Navigator.pushReplacementNamed(context, Login_Screen.id);
  }

  static void login(BuildContext context, String email, String password) async {
    try {
      String token;
      token = "123456";
      if (email == '123@123' && password == '1234567') {
        http.Response response = await http.post('http://10.0.2.2:3000/auth',
            body: {'username': 'prueba', 'password': 'contra'});
        print('Response status: ${response.statusCode}');
        dynamic data = response.body;
        data = json.decode(data);
        print(data['token']);
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => Loading_Screen(token)));
        //Navigator.pushReplacementNamed(context, Home_Screen.id);
      } else {
        print('errorrr');
      }
    } catch (e) {
      print(e);
    }
  }
}
