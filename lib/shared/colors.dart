import 'package:flutter/material.dart';

class CustomColors {
  Brightness mode;

  Color primary10;
  Color primary20;
  Color primary30;
  Color primary40;
  Color primary50;
  Color primary60;
  Color primary70;
  Color primary80;
  Color primary90;

  Color secondary10;
  Color secondary20;
  Color secondary30;
  Color secondary40;
  Color secondary50;
  Color secondary60;
  Color secondary70;
  Color secondary80;
  Color secondary90;

  CustomColors({
    required this.mode,
    required this.primary10,
    required this.primary20,
    required this.primary30,
    required this.primary40,
    required this.primary50,
    required this.primary60,
    required this.primary70,
    required this.primary80,
    required this.primary90,
    required this.secondary10,
    required this.secondary20,
    required this.secondary30,
    required this.secondary40,
    required this.secondary50,
    required this.secondary60,
    required this.secondary70,
    required this.secondary80,
    required this.secondary90,
  });

  static final light = CustomColors(
    mode: Brightness.light,
    primary10: const Color.fromARGB(237, 174, 10, 1),
    primary20: const Color.fromARGB(237, 174, 20, 1),
    primary30: const Color.fromARGB(237, 174, 30, 1),
    primary40: const Color.fromARGB(237, 174, 40, 1),
    primary50: const Color.fromARGB(237, 174, 50, 1),
    primary60: const Color.fromARGB(237, 174, 60, 1),
    primary70: const Color.fromARGB(237, 174, 70, 1),
    primary80: const Color.fromARGB(237, 174, 80, 1),
    primary90: const Color.fromARGB(237, 174, 90, 1),
    secondary10: const Color.fromARGB(237, 200, 10, 1),
    secondary20: const Color.fromARGB(237, 200, 20, 1),
    secondary30: const Color.fromARGB(237, 200, 30, 1),
    secondary40: const Color.fromARGB(237, 200, 40, 1),
    secondary50: const Color.fromARGB(237, 200, 50, 1),
    secondary60: const Color.fromARGB(237, 200, 60, 1),
    secondary70: const Color.fromARGB(237, 200, 70, 1),
    secondary80: const Color.fromARGB(237, 200, 80, 1),
    secondary90: const Color.fromARGB(237, 200, 90, 1),
  );

  static final dark = CustomColors(
    mode: Brightness.dark,
    primary10: const Color.fromARGB(125, 144, 10, 1),
    primary20: const Color.fromARGB(125, 144, 20, 1),
    primary30: const Color.fromARGB(125, 144, 30, 1),
    primary40: const Color.fromARGB(125, 144, 40, 1),
    primary50: const Color.fromARGB(125, 144, 50, 1),
    primary60: const Color.fromARGB(125, 144, 60, 1),
    primary70: const Color.fromARGB(125, 144, 70, 1),
    primary80: const Color.fromARGB(125, 144, 80, 1),
    primary90: const Color.fromARGB(125, 144, 90, 1),
    secondary10: const Color.fromARGB(125, 130, 10, 1),
    secondary20: const Color.fromARGB(125, 130, 20, 1),
    secondary30: const Color.fromARGB(125, 130, 30, 1),
    secondary40: const Color.fromARGB(125, 130, 40, 1),
    secondary50: const Color.fromARGB(125, 130, 50, 1),
    secondary60: const Color.fromARGB(125, 130, 60, 1),
    secondary70: const Color.fromARGB(125, 130, 70, 1),
    secondary80: const Color.fromARGB(125, 130, 80, 1),
    secondary90: const Color.fromARGB(125, 130, 90, 1),
  );
}
