import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../viewmodels/resume_view_model.dart';
import '../models/resume.dart';

class ListOfPeoplePage extends StatelessWidget {
  const ListOfPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ResumeViewModel>();
    final resumes = viewModel.getAllResumes();

    return Scaffold(
      appBar: AppBar(title: const Text("List of People")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: resumes.length,
                itemBuilder: (context, index) {
                  final resume = resumes[index];
                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(resume.fullName),
                          subtitle: Text("Occupation: ${resume.currentSituation}"),
                          onTap: () {
                            context.go("/homepage", extra: resume);
                          },
                          trailing: IconButton(
                            icon: const Icon(Icons.copy),
                            tooltip: 'Duplicate',
                            onPressed: () {
                              context.push("/newresume", extra: resume);
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                ),
                onPressed: () {
                  context.push("/newresume");
                },
                child: const Text('+', style: TextStyle(fontSize: 24)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
