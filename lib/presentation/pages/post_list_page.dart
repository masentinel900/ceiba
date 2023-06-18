import 'package:flutter/material.dart';
import '../widgets/post_list_tile.dart';
import '../../data/models/post.dart';
import '../../data/repositories/post_repository.dart';
import '../../data/providers/api_provider.dart';

class PostListPage extends StatefulWidget {
  final int userId;

  PostListPage({required this.userId});

  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  final PostRepository _postRepository = PostRepository(ApiProvider());
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _getPosts();
  }

  Future<void> _getPosts() async {
    _posts = await _postRepository.getPostsByUserId(widget.userId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        backgroundColor: Color(0xFF38761D),
      ),
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (BuildContext context, int index) {
          final post = _posts[index];
          return PostListTile(post: post);
        },
      ),
    );
  }
}
