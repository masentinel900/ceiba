import '../models/user.dart';
import '../providers/api_provider.dart';

class UserRepository {
  final ApiProvider _apiProvider;

  UserRepository(this._apiProvider);

  Future<List<User>> getUsers() async {
    final usersJson = await _apiProvider.getUsers();
    return usersJson.map((json) => User.fromJson(json)).toList();
  }
}
