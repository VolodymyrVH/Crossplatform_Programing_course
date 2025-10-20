import 'package:lab6/models/resume.dart';

class ResumeRepository {
  final List<Resume> _resumes = [
    Resume(
      id: 1,
      fullName: "Volodymyr Horielov",
      hobbies: "Gaming",
      currentSituation: "Student at university",
      aboutMe: "Hello! My name is Volodymyr. I'm from Kherson.",
      gitHubUsername: 'VolodymyrVH',
    ),
    Resume(
      id: 2,
      fullName: "Test1",
      hobbies: "Football, games",
      currentSituation: "School student",
      aboutMe: "Just testing profile",
      gitHubUsername: 'test-account',
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

  void addResume(Resume resume) {
    _resumes.add(resume);
  }
}