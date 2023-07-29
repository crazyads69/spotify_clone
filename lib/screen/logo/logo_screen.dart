import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/images.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoState();
}

class _LogoState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    initSplash();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
        (context),
        '/get-started',
        (route) => false,
      );
    });
  }

  void initSplash() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Image.asset(
          splashImage,
          width: MediaQuery.of(context).size.width * 72 / 100,
          height: MediaQuery.of(context).size.height * 10 / 100,
        ),
      ),
    );
  }
}
