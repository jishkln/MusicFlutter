import 'package:flutter/material.dart';
import 'package:musicrythum/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(applyElevationOverlayColor: false),
      title: 'Rythum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
