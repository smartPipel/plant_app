import 'package:flutter/material.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/models/plant_data_provider.dart';

class GridViewListTile extends StatelessWidget {
  final PlantDataProvider provider;
  final int i;
  GridViewListTile(this.provider, this.i);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail_data',
          arguments: Arguments(
            imageUrl: '$baseUrl/' +
                provider.plantData!.data!
                    .map((e) => e.image)
                    .toList()[i]
                    .toString(),
            id: provider.plantData!.data!
                .map((e) => e.id)
                .toList()[i]
                .toString(),
            descriptions: provider.plantData!.data!
                .map((e) => e.descriptions)
                .toList()[i]
                .toString(),
            latinName: provider.plantData!.data!
                .map((e) => e.latinName)
                .toList()[i]
                .toString(),
            plantName: provider.plantData!.data!
                .map((e) => e.plantName)
                .toList()[i]
                .toString(),
            plantType: provider.plantData!.data!
                .map((e) => e.plantType)
                .toList()[i]
                .toString(),
          ),
        );
      },
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              3.0,
              3.0,
            ),
            blurRadius: 6.0,
            spreadRadius: 0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ]),
        width: deviceWidth(context) * .2,
        margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        child: Stack(
          children: [
            Hero(
              tag: provider.plantData!.data!
                  .map((e) => e.id)
                  .toList()[i]
                  .toString(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage('$baseUrl/' +
                        provider.plantData!.data!
                            .map((e) => e.image)
                            .toList()[i]
                            .toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
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
                    borderRadius: BorderRadius.circular(10), color: greyColor),
                child: Center(
                  child: Text(provider.plantData!.data!
                      .map((e) => e.plantName)
                      .toList()[i]
                      .toString()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
