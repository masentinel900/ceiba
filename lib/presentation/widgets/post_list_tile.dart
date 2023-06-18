import 'package:flutter/material.dart';
import '../../data/models/post.dart';

class PostListTile extends StatelessWidget {
  final Post post;

  PostListTile({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text(
          post.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          post.body,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
