import 'package:flutter/material.dart';
import 'package:movie_app_route/Screens/forget_password.dart';
import 'package:movie_app_route/Screens/login.dart';
import 'package:movie_app_route/Screens/profile.dart';
import 'package:movie_app_route/Screens/register.dart';
import 'package:movie_app_route/theme/theme.dart';
import 'package:movie_app_route/theme/theme_light.dart';

import 'Screens/edit_profile.dart';
//import 'package:movie_app/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme theme = LightTheme();
    return MaterialApp(
      theme: theme.themeData,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        //HomeScreen.routeName : (context) => const HomeScreen(),
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
        ForgetPassword.routeName: (context) => ForgetPassword(),
        Profiletab.routeName: (context) => Profiletab(),
        EditProfile.routeName: (context) => EditProfile(),
      },
      initialRoute: Profiletab.routeName,
    );
  }
}
