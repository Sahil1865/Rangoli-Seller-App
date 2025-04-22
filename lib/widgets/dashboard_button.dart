import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget dashButton(BuildContext context, {
  required String title,
  required String count,
   dynamic icon
}) {
  var size = MediaQuery.of(context).size;

  Widget iconWidget;

  // Correctly check the type of icon and build the widget accordingly
  if (icon is String) {
    iconWidget = Image.asset(icon, width: 40, color: Colors.white);
  } else if (icon is IconData) {
    iconWidget = Icon(icon, color: Colors.white, size: 45);
  } else {
    iconWidget = const SizedBox(); // fallback if null or unknown
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldText(text: title, size: 16.0),
            boldText(text: count, size: 20.0),
          ],
        ),
      ),
      iconWidget,
    ],
  ).box.color(purpleColor).rounded.size(size.width * 0.4, 80).padding(const EdgeInsets.all(8)).make();
}
