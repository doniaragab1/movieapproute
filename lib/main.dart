import 'package:flutter/material.dart';
import 'package:movie_app_route/Home%20Screens/home_Page.dart';
import 'package:movie_app_route/cache/cache_helper.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen1.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen2.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen3.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen4.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen5.dart';
import 'package:movie_app_route/onBoardingScreens/boarding_screens/screen6.dart';
import 'package:movie_app_route/theme/theme.dart';
import 'package:movie_app_route/theme/theme_light.dart';

void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme lightTheme = LightTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: const Screen1(),
      theme: lightTheme.themeData,
      themeMode: ThemeMode.light,
      routes: {
        Screen1.routeName : (context) => const Screen1(),
        Screen2.routeName : (context) => const Screen2(),
        Screen3.routeName : (context) => const Screen3(),
        Screen4.routeName : (context) => const Screen4(),
        Screen5.routeName : (context) => const Screen5(),
        Screen6.routeName : (context) => const Screen6(),
        HomePage.routeName : (context) => const HomePage(),
       // MovieDetails.routeName : (context) => const MovieDetails(),
      },
      initialRoute: CacheHelper.getEligibility() == true ?
          HomePage.routeName : Screen1.routeName,
    );
  }
}