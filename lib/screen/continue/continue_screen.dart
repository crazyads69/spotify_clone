import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/images.dart';
import 'package:spotify_clone/constant/icon.dart';
import 'package:spotify_clone/constant/typography.dart';

bool isDarkMode = false;

class Continue extends StatefulWidget {
  const Continue({super.key});

  @override
  State<Continue> createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {
  @override
  void initState() {
    super.initState();
    isDarkMode = false;
  }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        backButtonIcon_1,
                        height: MediaQuery.of(context).size.height * 5 / 100,
                        width: MediaQuery.of(context).size.width * 10 / 100,
                        fit: BoxFit.contain,
                      )),
                  SizedBox(width: MediaQuery.of(context).size.width * 20 / 100),
                  Center(
                    child: Image.asset(splashImage,
                        height: MediaQuery.of(context).size.height * 10 / 100,
                        width: MediaQuery.of(context).size.width * 25 / 100,
                        fit: BoxFit.contain),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 30 / 100),
                ],
              ),
              const SizedBox(height: 2),
              Stack(children: [
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
                        Center(
                          child:
                              Text("Choose Mode", style: bodySemiBoldTextStyle),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 50 / 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  splashColor: mainColor.withOpacity(0.2),
                                  color: isDarkMode
                                      ? whiteColor.withOpacity(0.1)
                                      : mainColor.withOpacity(0.1),
                                  height: MediaQuery.of(context).size.height *
                                      10 /
                                      100,
                                  minWidth: MediaQuery.of(context).size.width *
                                      10 /
                                      100,
                                  onHighlightChanged: (value) => {
                                        setState(() {
                                          isDarkMode = !isDarkMode;
                                        })
                                      },
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      isDarkMode = !isDarkMode;
                                    });
                                  },
                                  child: SvgPicture.asset(moonIcon)),
                              MaterialButton(
                                  color: whiteColor.withOpacity(0.1),
                                  height: MediaQuery.of(context).size.height *
                                      10 /
                                      100,
                                  minWidth: MediaQuery.of(context).size.width *
                                      10 /
                                      100,
                                  onHighlightChanged: (value) => {
                                        setState(() {
                                          isDarkMode = !isDarkMode;
                                        })
                                      },
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      isDarkMode = !isDarkMode;
                                    });
                                  },
                                  child: SvgPicture.asset(sunIcon)),
                            ],
                          ),
                        )
                      ],
                    ))
              ]),
            ]));
  }
}
