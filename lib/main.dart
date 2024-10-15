import 'dart:io';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:study_injection_and_routes_native/config/app_routes.dart';
import 'package:study_injection_and_routes_native/core/injections/singletons/singleton_hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Directory directory = await getApplicationSupportDirectory();
  Hive.init(directory.path);

  await SingletonHiveService.instance.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
