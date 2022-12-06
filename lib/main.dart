import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:joali_booking_app/features/auth/providers/login_model.dart';
import 'package:joali_booking_app/features/auth/providers/register_model.dart';
import 'package:joali_booking_app/features/auth/screens/login_screen.dart';
import 'package:joali_booking_app/features/auth/services/auth_service.dart';
import 'package:joali_booking_app/features/home/screens/home_screen.dart';
import 'package:joali_booking_app/page_router.dart';
import 'package:joali_booking_app/common/theme.dart';
import 'package:joali_booking_app/service_locator.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  setupLocator();

  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginModel()),
        ChangeNotifierProvider(create: (_) => RegisterModel()),
      ],
      child: JoaliBookingApp(),
    ),
  );
}

class JoaliBookingApp extends StatelessWidget {
  JoaliBookingApp({Key? key}) : super(key: key);

  final AuthService _authService = locator<AuthService>();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      initialData: null,
      value: _authService.user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        initialRoute: 'wrapper',
        onGenerateRoute: PageRouter.generateRoute,
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);

    if (user == null) {
      
      return LoginScreen();
    } 
    else {
      return HomeScreen();
    }
  }
}
