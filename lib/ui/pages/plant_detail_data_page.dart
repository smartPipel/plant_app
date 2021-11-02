import 'package:flutter/material.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/ui/widgets/app_bar_widget.dart';
import 'package:myapp/ui/widgets/container_radius_widget.dart';

class DetailDataPage extends StatelessWidget {
  const DetailDataPage(
      {this.imageUrl,
      this.id,
      this.descriptions,
      this.latinName,
      this.plantName,
      this.plantType});
  final String? imageUrl;
  final String? id;
  final String? descriptions;
  final String? plantName;
  final String? latinName;
  final String? plantType;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Hero(
                tag: args.id.toString(),
                child: Container(
                  height: deviceHeight(context),
                  width: deviceWidth(context),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          args.imageUrl.toString(),
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  height: deviceHeight(context) * .6,
                  width: deviceWidth(context),
                  margin: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black38,
                    //     offset: const Offset(
                    //       10.0,
                    //       10.0,
                    //     ),
                    //     blurRadius: 20.0,
                    //     spreadRadius: 0,
                    //   ), //BoxShadow
                    //   BoxShadow(
                    //     color: Colors.white,
                    //     offset: const Offset(0.0, 0.0),
                    //     blurRadius: 0.0,
                    //     spreadRadius: 0.0,
                    //   ), //BoxShadow
                    // ],
                  ),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      ContainerRadiusWidget(
                        text: 'Nama tanaman',
                        color: Colors.transparent,
                        textStyle: headerStyle,
                      ),
                      ContainerRadiusWidget(text: args.plantName.toString()),
                      SizedBox(
                        height: 15,
                      ),
                      ContainerRadiusWidget(
                        text: 'Nama latin',
                        color: Colors.transparent,
                        textStyle: headerStyle,
                      ),
                      ContainerRadiusWidget(
                        text: args.latinName.toString(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ContainerRadiusWidget(
                        text: 'Deskripsi',
                        color: Colors.transparent,
                        textStyle: headerStyle,
                      ),
                      ContainerRadiusWidget(text: args.descriptions.toString()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
