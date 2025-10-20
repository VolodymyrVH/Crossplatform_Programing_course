import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/retry.dart';
import 'package:provider/provider.dart';

import 'models/resume.dart';
import 'viewmodels/git_hub_view_model.dart';
import 'viewmodels/resume_view_model.dart';
import 'repository/github_repository.dart';
import 'services/github_service.dart';

import 'pages/listofpeople.dart';
import 'pages/homepage.dart';
import 'pages/aboutme.dart';
import 'pages/myhobbies.dart';
import 'pages/currentsituation.dart';
import 'pages/githubstats.dart';
import 'pages/newresume.dart';

void main() {
  final gitHubService = GitHubService();
  final gitHubRepo = GitHubRepository(gitHubService);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GitHubViewModel(gitHubRepo),
        ),
        ChangeNotifierProvider(
          create: (_) => ResumeViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
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
        GoRoute(
          path: '/github-stats',
          builder: (context, state) {
            final resume = state.extra as Resume;
            return GithubStats(resume: resume);
          },
        ),
        GoRoute(
          path: '/newresume',
          builder: (context, state) {
            final template = state.extra as Resume?;
            return NewResume(template: template);
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'About Me App',
      routerConfig: _router,
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
