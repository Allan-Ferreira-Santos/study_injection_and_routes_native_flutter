import 'package:flutter/material.dart';
import 'package:study_injection_and_routes_native/features/home/injections/singletons/singleton_home_screen.dart';
import 'package:study_injection_and_routes_native/features/login/injections/singletons/singleton_login_screen.dart';


class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => SingletonLoginScreen.instance,
    home: (context) => SingletonHomeScreen.instance,
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    WidgetBuilder? builder = routes[settings.name];

    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    } else {
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(child: Text('Route not found: ${settings.name}')),
              ));
    }
  }
}
