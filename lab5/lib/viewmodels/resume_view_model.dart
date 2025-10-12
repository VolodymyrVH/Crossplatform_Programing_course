import 'package:lab5/repository/resume_repository.dart';
import 'package:lab5/models/resume.dart';

class ResumeViewModel {
  final ResumeRepository _repository = ResumeRepository();

  List<Resume> getAllResumes() {
    return _repository.getAll();
  }

  Resume? getResumeById(int id) {
    return _repository.getById(id);
  }

}