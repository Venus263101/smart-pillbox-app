import 'package:flutter/material.dart';
import 'add_user_screen.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('User A'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('User B'),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddUserScreen(),
                  ),
                );
              },
              child: const Text('Add New User'),
            ),
          ),
        ],
      ),
    );
  }
}
