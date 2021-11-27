import 'package:flutter/material.dart';
import 'package:myapp/business_logic/models/arguments.dart';
import 'package:myapp/business_logic/view_models/plant_data_provider.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/styles.dart';

import 'package:myapp/ui/routes/router_list.dart';

class GridViewListTile extends StatelessWidget {
  final PlantDataProvider provider;
  final int i;
  GridViewListTile(this.provider, this.i);
  get data => provider.plantData!.data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          routeDetailDataScreen,
          arguments: Arguments(
            imageUrl:
                '$baseUrl/' + data.map((e) => e.image).toList()[i].toString(),
            id: data.map((e) => e.id).toList()[i].toString(),
            descriptions:
                data.map((e) => e.descriptions).toList()[i].toString(),
            latinName: data.map((e) => e.latinName).toList()[i].toString(),
            plantName: data.map((e) => e.plantName).toList()[i].toString(),
            plantType: data.map((e) => e.plantType).toList()[i].toString(),
          ),
        );
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(rounded()),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey,
            //     offset: const Offset(
            //       6.0,
            //       6.0,
            //     ),
            //     blurRadius: 6.0,
            //     spreadRadius: 0,
            //   ), //BoxShadow
            // ],
          ),
          width: deviceWidth(context) * .2,
          margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
          child: Stack(
            children: [
              Hero(
                tag: data != null
                    ? data.map((e) => e.id).toList()[i].toString()
                    : CircularProgressIndicator(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(rounded()),
                  ),
                  child: Stack(
                    // crossAxisAlignment: CrossAxisAlignment
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: deviceHeight(context),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(rounded()),
                                child: Image.network(
                                  '$baseUrl/' +
                                      data
                                          .map((e) => e.image)
                                          .toList()[i]
                                          .toString(),
                                  fit: BoxFit.cover,
                                  loadingBuilder: (_, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }

                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                        color: greenColor(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(rounded()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 40,
                  width: deviceWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(subRounded()),
                      color: greyColor()),
                  child: Center(
                    child: Text(
                        data.map((e) => e.plantName).toList()[i].toString()),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
