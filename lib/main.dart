import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelingo_apps/home/main-page.dart';
import 'package:travelingo_apps/pages/detail-product.dart';
import 'package:travelingo_apps/pages/forget-password.dart';
import 'package:travelingo_apps/pages/login-page.dart';
import 'package:travelingo_apps/pages/register-page.dart';
import 'package:travelingo_apps/pages/verification-account.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
      '/':(context) => LoginPage(),
      '/register':(context) => RegisterPage(),
      '/forget-password':(context) => ForgetPasswordPage(),
      '/verification-page':(context) => VerificationAccount(),
      '/main-page-home':(context) => MainPageHome(),
      '/detail-page':(context) => DetailProduct(),
     },
    );
  }
}