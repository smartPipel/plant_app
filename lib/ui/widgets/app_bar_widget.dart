import 'package:flutter/material.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/iconsku_icons.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: primaryColor,
    leading: IconButton(
      icon: Icon(
        Iconsku.chevron_big_left,
        color: blackColor,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
