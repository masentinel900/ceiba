import '../models/post.dart';
import '../providers/api_provider.dart';

class PostRepository {
  final ApiProvider _apiProvider;

  PostRepository(this._apiProvider);

  Future<List<Post>> getPostsByUserId(int userId) async {
    final postsJson = await _apiProvider.getPostsByUserId(userId);
    return postsJson.map((json) => Post.fromJson(json)).toList();
  }
}
