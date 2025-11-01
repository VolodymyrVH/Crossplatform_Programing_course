import 'package:lab7/models/github_user.dart';
import 'package:lab7/services/github_service.dart';

class GitHubRepository {
  final GitHubService _service;

  GitHubRepository(this._service);

  Future<GitHubUser> getUser(String username) async {
    final data = await _service.fetchUserData(username);
    return GitHubUser.fromJson(data);
  }
}
