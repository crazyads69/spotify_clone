import 'package:flutter/material.dart';

// Main Color

Color mainColor = const Color(0xFF1ED760);

// Secondary Color

Color secondaryColor = const Color(0xFFD7BD1E);

// Background Color

const whiteColor = Color(0xFFF0F0F0);
const greyColor = Color(0xFF333333);
const blackColor = Color(0xFF0F0E0E);

// Gradient Color

const gradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      blackColor,
      greyColor,
    ],
    stops: [
      0.0,
      1.0
    ]);
