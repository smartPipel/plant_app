import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';

class ContainerRadiusWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final TextStyle? textStyle;

  const ContainerRadiusWidget({this.color, this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rounded()),
          color: color ?? greyColor()),
      child: Text(
        text.toString(),
        style: textStyle,
      ),
    );
  }
}
