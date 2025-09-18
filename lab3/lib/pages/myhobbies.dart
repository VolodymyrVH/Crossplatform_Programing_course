import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHobbies extends StatelessWidget{
  const MyHobbies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Hobbies")),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("This is My Hobbies page",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),),
              const Text(
              '''My Hobbies are playing video games, programing and looking memes''',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              const Spacer(),
              ElevatedButton(
                onPressed: () => context.go('/'), 
                child: const Text('Back to Home'))
            ],
          ),
        ),
      ),
    );
  }
}