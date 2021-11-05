import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/iconsku_icons.dart';
import 'package:myapp/ui/widgets/menu_dashboard.dart';
import 'package:myapp/ui/widgets/menu_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: titleStyle,
          ),
          elevation: 0,
          titleSpacing: 20,
          backgroundColor: greenColor(),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              // margin: EdgeInsets.only(right: 20.0),
              child: Icon(
                Iconsku.settings_future,
                color: darkColor(),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              child: Image.asset(
                imageAssets + "bg_home_menu.png",
                fit: BoxFit.fill,
              ),
              height: deviceHeight(context) * .4,
              width: deviceWidth(context),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Hello selamat datang, \nAlvin",
                            style: headerStyle,
                          ),
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: lightColor(),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: greyColor(),
                                    spreadRadius: 5,
                                    blurRadius: 6,
                                    offset: Offset(0, 0),
                                  )
                                ]),
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Icon(
                                Iconsku.log_out,
                                color: darkColor(),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: deviceHeight(context) * .15,
                    width: deviceWidth(context),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuDashboard(),
                          MenuDashboard(),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20, left: 20),
                    width: deviceWidth(context),
                    height: deviceHeight(context) * .45,
                    decoration: BoxDecoration(
                        color: greyColor().withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15)),
                    child: ListView.builder(
                      itemCount: imageList.length,
                      itemBuilder: (context, i) {
                        return MenuList(
                          image: imageList[i],
                          title: titleList[i],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
