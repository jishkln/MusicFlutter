import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicrythum/bottum_navigation_screen.dart';
import 'package:musicrythum/widgets/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigationRoot();
  }

  navigationRoot() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BottumNavi(),
          ),
        );
      },
    );
  }

  // async {
  //   await Future.delayed(const Duration(seconds: 4), () {});
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const BottumNavi(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "hiii",
            style: TextStyles.subTitleStyle,
          ),
        ),
      ),
    );
  }
}
