import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';

class MapGradient {
  static List<Color> map(int value) {
    switch (value) {
      case 0:
        return kGradientPair1;
        break;
      case 1:
        return kGradientPair2;
        break;
      case 2:
        return kGradientPair3;
        break;
      case 3:
        return kGradientPair1;
        break;
      case 4:
        return kGradientPair2;
        break;
      case 5:
        return kGradientPair3;
        break;
      case 6:
        return kGradientPair1;
        break;
      case 7:
        return kGradientPair2;
        break;
      case 8:
        return kGradientPair3;
        break;
      case 9:
        return kGradientPair1;
        break;
      default:
        return kGradientPair1;
        break;
    }
  }

  static List<Color> generateColors(int currentImg) {
    int value;
    if (currentImg.toString().length == 1) {
      value = currentImg;
    } else {
      value = int.parse(currentImg.toString()[1]);
    }

    return map(value);
  }
}
