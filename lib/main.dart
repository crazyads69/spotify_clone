import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/images.dart';
import 'package:spotify_clone/screen/get_started/get_started_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      home: const LogoScreen(),
      initialRoute: '/',
      routes: {
        '/get-started': (context) => const GettingStarted(),
      },
    );
  }
}

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoState();
}

class _LogoState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    initialization();

    setState(() {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(
          (context),
          '/get-started',
          (route) => false,
        );
      });
    });
  }

  void initialization() async {
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
