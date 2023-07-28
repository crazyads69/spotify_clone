import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/images.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(splashImage,
              height: MediaQuery.of(context).size.height * 10 / 100,
              width: MediaQuery.of(context).size.width * 20 / 100),
          const SizedBox(height: 2),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    blackColor.withOpacity(0.6),
                    Colors.transparent,
                    blackColor.withOpacity(0.6),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.6, 0.9]),
            ),
            child: Image.asset(
              welcomeBackgroundImage_1,
              height: MediaQuery.of(context).size.height * 50 / 100,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
