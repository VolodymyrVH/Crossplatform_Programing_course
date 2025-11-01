import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../viewmodels/resume_view_model.dart';

class ListOfPeoplePage extends StatelessWidget {
  const ListOfPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ResumeViewModel>();

    if (viewModel.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final resumes = viewModel.resumes;

    return Scaffold(
      appBar: AppBar(title: const Text("List of People")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: resumes.isEmpty
                  ? const Center(child: Text("No resumes yet"))
                  : ListView.builder(
                      itemCount: resumes.length,
                      itemBuilder: (context, index) {
                        final resume = resumes[index];
                        return Card(
                          child: ListTile(
                            title: Text(resume.fullName),
                            subtitle: Text(resume.currentSituation),
                            onTap: () => context.go("/homepage", extra: resume),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                viewModel.deleteResume(resume.id);
                              },
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => context.push("/newresume"),
                child: const Text("+ Add Resume"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
