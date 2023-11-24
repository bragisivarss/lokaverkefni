import 'package:flutter/material.dart';
import 'package:lokaverk/data/users.dart';
import 'package:lokaverk/screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void onSelectUser() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const HomePageScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Please Select a User'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: ListView.builder(
          itemCount: Users.availableUsers.length,
          itemBuilder: (context, index) {
            final user = Users.availableUsers[index];
            return InkWell(
              onTap: () {
                onSelectUser();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        //Setja inn profile mynd her
                        Text(user.name),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
