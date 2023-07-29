import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_clone/constant/colors.dart';
import 'package:spotify_clone/constant/icon.dart';
import 'package:spotify_clone/constant/images.dart';
import 'package:spotify_clone/constant/typography.dart';

bool isDarkMode = false;

Future initIsDarkMode() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isDarkMode = prefs.getBool('isDarkMode') ?? false;
}

Future setIsDarkMode(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isDarkMode', value);
}

class Continue extends StatefulWidget {
  const Continue({super.key});

  @override
  State<Continue> createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {
  @override
  void initState() {
    super.initState();
    initIsDarkMode();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    backButtonIcon_1,
                    height: MediaQuery.of(context).size.height * 5 / 100,
                    width: MediaQuery.of(context).size.width * 10 / 100,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 20 / 100),
                Center(
                  child: Image.asset(
                    splashImage,
                    height: MediaQuery.of(context).size.height * 10 / 100,
                    width: MediaQuery.of(context).size.width * 25 / 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 30 / 100),
              ],
            ),
            const SizedBox(height: 2),
            Stack(
              children: [
                Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.85),
                        Colors.transparent.withOpacity(0.1),
                        Colors.black.withOpacity(0.95),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.1, 0.6, 0.9],
                    ),
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
                    children: [
                      Center(
                        child:
                            Text("Choose Mode", style: bodySemiBoldTextStyle),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width * 50 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  foregroundDecoration: BoxDecoration(
                                    color: isDarkMode
                                        ? mainColor.withOpacity(0.6)
                                        : whiteColor.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: MaterialButton(
                                    color: Colors.transparent,
                                    height: MediaQuery.of(context).size.height *
                                        10 /
                                        100,
                                    minWidth:
                                        MediaQuery.of(context).size.width *
                                            10 /
                                            100,
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      setState(() {
                                        isDarkMode = !isDarkMode;
                                        setIsDarkMode(isDarkMode);
                                      });
                                    },
                                    child: SvgPicture.asset(moonIcon),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Dark Mode",
                                  style: captionRegularTextStyle,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  foregroundDecoration: BoxDecoration(
                                    color: isDarkMode
                                        ? whiteColor.withOpacity(0.1)
                                        : mainColor.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: MaterialButton(
                                    color: Colors.transparent,
                                    height: MediaQuery.of(context).size.height *
                                        10 /
                                        100,
                                    minWidth:
                                        MediaQuery.of(context).size.width *
                                            10 /
                                            100,
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      setState(() {
                                        isDarkMode = !isDarkMode;
                                        setIsDarkMode(isDarkMode);
                                      });
                                    },
                                    child: SvgPicture.asset(sunIcon),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Light Mode",
                                  style: captionRegularTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 10 / 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /*SizedBox(height: MediaQuery.of(context).size.height * 5 / 100),*/
            MaterialButton(
              height: MediaQuery.of(context).size.height * 10 / 100,
              minWidth: MediaQuery.of(context).size.width * 90 / 100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/continue');
              },
              color: mainColor,
              child: Text(
                "Continue",
                style: titleBoldBlackTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
