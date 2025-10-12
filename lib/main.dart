import 'package:flutter/material.dart';
import 'featueres/splash/presentation/screens/splash_screen.dart';
import 'featueres/home/presentation/screens/home_screen.dart';

void main() {
  runApp(FattoApp());
}

class FattoApp extends StatelessWidget {
  const FattoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => SplashScreen(),
        'home_screen': (context) => HomeScreen(),
      },
    );
  }
}
