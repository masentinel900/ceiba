import 'package:flutter/material.dart';
import '../../data/models/user.dart';

class UserListTile extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  UserListTile({required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.phone, color: Color(0xFF38761D)),
              SizedBox(width: 5),
              Text(user.phone),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email, color: Color(0xFF38761D)),
              SizedBox(width: 5),
              Text(user.email),
            ],
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Text(
              'Ver publicaciones',
              style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFF38761D)),
            ),
          ),
        ],
      ),
    );
  }
}
