import 'package:flutter/material.dart';
import 'package:lokaverk/widgets/main_drawer.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: const Text('Welcome *USER*'),
      ),
      drawer: const MainDrawer(),
      body: const Column(
        children: [
          Text('Hello'),
          Text('Hello'),
        ],
      ),
    );
  }
}
