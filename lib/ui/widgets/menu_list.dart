import 'package:flutter/material.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/iconsku_icons.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/ui/routes/router_list.dart';

class MenuList extends StatelessWidget {
  MenuList({this.image, this.title});

  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, routeDetailScreen,
            arguments: Arguments(title: this.title))
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: lightColor(), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: deviceWidth(context) * .1,
              child: Image.asset(image.toString()),
            ),
            Container(
              child: Text(
                title.toString(),
                style: subtitleStyle(colors: darkColor()),
              ),
            ),
            Container(
              child: Icon(Iconsku.chevron_right),
            )
          ],
        ),
      ),
    );
  }
}
