import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 200, 219),
      appBar: AppBar(title: const Text("Homepage")),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to my app!",
              style: TextStyle(
                fontSize: 48, 
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 4.0,
                    color: Colors.black,
                  )
                ]
                ),
              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: () => context.go('/about'), 
                child: const Text('About me'),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () => context.go('/hobbies'), 
                child: const Text('Hobbies'),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () => context.go('/current-situation'), 
                child: const Text('Right Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}