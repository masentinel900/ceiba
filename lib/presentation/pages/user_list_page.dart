import 'package:flutter/material.dart';
import '../widgets/user_list_tile.dart';
import '../../data/models/user.dart';
import '../../data/repositories/user_repository.dart';
import '../../data/providers/api_provider.dart';
import 'post_list_page.dart';

class UserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  final UserRepository _userRepository = UserRepository(ApiProvider());
  List<User> _users = [];
  List<User> _filteredUsers = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  Future<void> _getUsers() async {
    _users = await _userRepository.getUsers();
    setState(() {
      _filteredUsers = _users;
    });
  }

  void _filterUsers(String query) {
    setState(() {
      _filteredUsers = _users.where((user) {
        final name = user.name.toLowerCase();
        return name.contains(query.toLowerCase());
      }).toList();
    });
  }

  void _navigateToPostsPage(int userId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostListPage(userId: userId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de Ingreso'),
        backgroundColor: Color(0xFF38761D),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _searchController,
                onChanged: _filterUsers,
                decoration: InputDecoration(
                  labelText: 'Buscar Usuario',
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: _filteredUsers.length,
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  final user = _filteredUsers[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: UserListTile(
                      user: user,
                      onTap: () => _navigateToPostsPage(user.id),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
