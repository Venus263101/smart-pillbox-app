import 'package:flutter/material.dart';
import 'add_user_screen.dart';

class UserSelectionScreen extends StatefulWidget {
  @override
  _UserSelectionScreenState createState() => _UserSelectionScreenState();
}

class _UserSelectionScreenState extends State<UserSelectionScreen> {
  List<String> users = ["User A", "User B"]; // Example existing users

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select User"),
      ),
      body: ListView.builder(
        itemCount: users.length + 1,
        itemBuilder: (context, index) {
          if (index == users.length) {
            return ListTile(
              leading: Icon(Icons.add),
              title: Text("Add New User"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddUserScreen()));
              },
            );
          }
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(users[index]),
            onTap: () {
              // TODO: Open user's home/dashboard
            },
          );
        },
      ),
    );
  }
}
