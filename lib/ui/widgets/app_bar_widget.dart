import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/constants/iconsku_icons.dart';
import 'package:myapp/constants/styles.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: greyColor(),
      // statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: greyColor(),
    ),
    elevation: 0,
    backgroundColor: greyColor(),
    leading: IconButton(
      icon: Icon(
        Iconsku.chevron_big_left,
        color: darkColor(),
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
