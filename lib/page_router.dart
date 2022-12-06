import 'package:flutter/material.dart';
import 'package:joali_booking_app/features/auth/screens/login_screen.dart';
import 'package:joali_booking_app/features/auth/screens/register_screen.dart';
import 'package:joali_booking_app/features/home/screens/home_screen.dart';
import 'package:joali_booking_app/features/splash/splash_screen.dart';
import 'package:joali_booking_app/main.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'wrapper':
        return MaterialPageRoute(builder: (_) => const Wrapper());
      case 'Splashscreen':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
