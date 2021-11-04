import 'package:flutter/material.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/styles.dart';

class MenuDashboard extends StatelessWidget {
  const MenuDashboard({Key? key, this.marginRight}) : super(key: key);

  final int? marginRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: greyColor().withOpacity(0.9),
          borderRadius: BorderRadius.circular(15)),
      width: deviceWidth(context) * .42,
      margin: EdgeInsets.only(right: marginRight?.toInt().toDouble() ?? 0),
      child: Center(child: Text("Container")),
    );
  }
}
