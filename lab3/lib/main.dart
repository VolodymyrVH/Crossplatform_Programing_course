import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lab3/pages/homepage.dart';

import 'pages/aboutme.dart';
import 'pages/currentsituation.dart';
import 'pages/myhobbies.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _route = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutMe(),
    ),
    GoRoute(
      path: '/hobbies',
      builder: (context, state) => const MyHobbies(),
    ),
    GoRoute(
      path: '/current-situation',
      builder: (context, state) => const MySituation(),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _route,
      title: 'About Me App',
      
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 167, 196),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
            textStyle: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            backgroundColor: const Color.fromARGB(255, 245, 181, 218),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            elevation: 8,
          ),
        ),
      ),
    );
  }
}
