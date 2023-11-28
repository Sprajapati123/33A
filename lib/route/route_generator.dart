import 'package:batch_33a/login/login_screen.dart';
import 'package:batch_33a/navigation/navigation.dart';
import 'package:batch_33a/registraion/registration_screen.dart';
import 'package:batch_33a/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RegistrationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());

      case NavigationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());

      default:
        _onPageNotFound();
    }
  }

  static Route<dynamic> _onPageNotFound() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(body: Text("Page not found")),
    );
  }
}
