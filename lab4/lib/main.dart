import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lab4/models/resume.dart';
import 'package:lab4/pages/listofpeople.dart';
import 'package:lab4/pages/homepage.dart';
import 'package:lab4/pages/aboutme.dart';
import 'package:lab4/pages/myhobbies.dart';
import 'package:lab4/pages/currentsituation.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _route = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ListOfPeoplePage(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) {
        final resume = state.extra as Resume;
        return Homepage(resume: resume);
      },
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) {
        final resume = state.extra as Resume;
        return AboutMe(resume: resume);
      },
    ),
    GoRoute(
      path: '/hobbies',
      builder: (context, state) {
        final resume = state.extra as Resume;
        return MyHobbies(resume: resume);
      },
    ),
    GoRoute(
      path: '/current-situation',
      builder: (context, state) {
        final resume = state.extra as Resume;
        return MySituation(resume: resume);
      },
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
        ),
      ),
    );
  }
}
