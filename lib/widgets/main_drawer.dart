import 'package:flutter/material.dart';
import 'package:lokaverk/screens/login.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    super.key,
  });

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  void onSelectUser() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Row(
              children: [
                Text('Were do you want to go?'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text('My Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Change User'),
            onTap: onSelectUser,
          ),
        ],
      ),
    );
  }
}
