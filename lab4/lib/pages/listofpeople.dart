import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../viewmodels/resume_view_model.dart';

class ListOfPeoplePage extends StatelessWidget {
  const ListOfPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final resumes = ResumeViewModel().getAllResumes();

    return Scaffold(
      appBar: AppBar(title: const Text("List of People")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: resumes.length,
          itemBuilder: (context, index) {
            final resume = resumes[index];
            return Card(
              child: ListTile(
                title: Text(resume.fullName),
                subtitle: Text("Occupation ${resume.currentSituation}"),
                onTap: () {
                  context.go("/homepage", extra: resume);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
