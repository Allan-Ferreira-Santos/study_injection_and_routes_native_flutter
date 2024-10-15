import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:study_injection_and_routes_native/features/home/domain/usecases/home_usecase.dart';

class HomeScreen extends StatefulWidget {
  final HomeUseCase homeUseCase;

  const HomeScreen({super.key, required this.homeUseCase});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String user = '';

  @override
  void initState() {
    super.initState();

    user = widget.homeUseCase.getUser();
    log(user.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Text('Hello, $user!')
      ),
    );
  }
}
