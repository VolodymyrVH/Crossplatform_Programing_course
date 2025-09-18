import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutMe extends StatelessWidget{
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me")),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("This is About Me page",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),),
              const Text(
              '''Hello! My name is Volodymyr. I'm 19 years old. I'm from Ukraine, from the city Kherson.''',
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