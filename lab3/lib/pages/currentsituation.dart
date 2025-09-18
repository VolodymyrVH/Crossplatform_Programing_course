import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySituation extends StatelessWidget{
  const MySituation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("What about me right now")),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("What I do right now",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),),
              const Text(
              '''Right now Im in Germany, learning German and Flutter''',
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