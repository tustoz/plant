import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

List category = ["Recomended", "Indoor", "Outdoor", "Garden", "Suppl"];
List catStyle = [
  Styles.textCatStyle.copyWith(
    color: Styles.primaryColor,
    fontWeight: FontWeight.w600,
  ),
  Styles.textCatStyle.copyWith(
    color: Styles.greyColor,
  ),
  Styles.textCatStyle.copyWith(
    color: Styles.greyColor,
  ),
  Styles.textCatStyle.copyWith(
    color: Styles.greyColor,
  ),
  Styles.textCatStyle.copyWith(
    color: Styles.greyColor,
  ),
];

class PlantInfo {
  final String icon, title, value;

  PlantInfo({required this.icon, required this.title, required this.value});
}

List<PlantInfo> plantInfo = [
  PlantInfo(
    icon: 'assets/images/humidity.png',
    title: "Humidity",
    value: "50%",
  ),
  PlantInfo(
    icon: 'assets/images/height.png',
    title: "Height",
    value: "“7,2”",
  ),
  PlantInfo(
    icon: 'assets/images/temperature.png',
    title: "Temperature",
    value: "20-25 C",
  )
];
