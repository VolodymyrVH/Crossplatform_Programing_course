import 'package:lab4/models/resume.dart';

class ResumeRepository {
  final List<Resume> _resumes = [
    Resume(
      id: 1,
      fullName: "Volodymyr Horielov",
      age: 19,
      hobbies: "Gaming",
      currentSituation: "Student at university",
      aboutMe: "Hello! My name is Volodymyr. I'm from Kherson.",
    ),
    Resume(
      id: 2,
      fullName: "Test1",
      age: 12,
      hobbies: "Football, games",
      currentSituation: "School student",
      aboutMe: "Just testing profile",
    ),
  ];

  List<Resume> getAll() {
    return _resumes;
  }

  Resume? getById(int id) {
    try {
      return _resumes.firstWhere((resume) => resume.id == id);
    } catch (e) {
      return null;
    }
  }
}
