import 'package:flutter/material.dart';

var bright = [Colors.blueAccent, Colors.greenAccent];
var dark = [Color.fromARGB(255, 51, 46, 64), Color.fromARGB(255, 45, 45, 46)];
var THEME_MAP = {0:bright, 1:dark};

class Theme {
  int themeIdentifier = 0;

  void setTheme(int newTheme) {
    themeIdentifier = newTheme;
  }

  int getTheme() {
    return themeIdentifier;
  }

  int numTheme(){
    return THEME_MAP.length;
  }

  void printInfo(){
    print("The current theme is " + THEME_MAP[themeIdentifier].toString());
  }

  Color getTopBG(){
    return THEME_MAP[themeIdentifier][0];
  }

  Color getBotBG(){
    return THEME_MAP[themeIdentifier][1];
  }
}