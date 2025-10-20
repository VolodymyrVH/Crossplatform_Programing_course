import 'package:lab6/repository/resume_repository.dart';
import 'package:lab6/models/resume.dart';
import 'package:flutter/material.dart';

class ResumeViewModel extends ChangeNotifier {
  final ResumeRepository _repository = ResumeRepository();

  List<Resume> getAllResumes() {
    return _repository.getAll();
  }

  Resume? getResumeById(int id) {
    return _repository.getById(id);
  }

  void addResume(Resume resume) {
    _repository.addResume(resume);
    notifyListeners();
  }

}