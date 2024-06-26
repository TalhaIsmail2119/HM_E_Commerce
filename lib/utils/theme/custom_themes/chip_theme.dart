import 'package:flutter/material.dart';
class HMChipTheme{
  HMChipTheme._();

  ///Light

static ChipThemeData lightChipTheme=ChipThemeData(
  disabledColor: Colors.grey.withOpacity(.5),
  labelStyle: const TextStyle(color: Colors.black),
  selectedColor: Colors.blue,
  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
  checkmarkColor: Colors.white,
);


///dark

  static ChipThemeData darkChipTheme=ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,
  );
}