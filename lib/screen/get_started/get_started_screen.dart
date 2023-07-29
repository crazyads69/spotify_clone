import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/images.dart';
import 'package:spotify_clone/constant/typography.dart';
import 'package:spotify_clone/screen/continue/continue_screen.dart';

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
              width: MediaQuery.of(context).size.width * 25 / 100,
              fit: BoxFit.contain),
          const SizedBox(height: 2),
          Stack(
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent.withOpacity(0.1),
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.1, 0.6, 0.9]),
                ),
                child: Image.asset(
                  welcomeBackgroundImage_1,
                  height: MediaQuery.of(context).size.height * 75 / 100,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Music for everyone.",
                          style: titleBoldGreenTextStyle),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        child: Center(
                          child: Text(
                            "Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum. ",
                            style: bodyRegularTextStyle,
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 20),
          MaterialButton(
            height: MediaQuery.of(context).size.height * 10 / 100,
            minWidth: MediaQuery.of(context).size.width * 90 / 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/continue');
            },
            child: Text(
              "Get Started",
              style: titleBoldBlackTextStyle,
            ),
            color: mainColor,
          ),
        ],
      ),
    );
  }
}
