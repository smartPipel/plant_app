import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/business_logic/models/arguments.dart';
import 'package:myapp/business_logic/models/plant_data.dart';
import 'package:myapp/business_logic/view_models/plant_data_provider.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/ui/widgets/app_bar_widget.dart';
import 'package:myapp/ui/widgets/grid_view_list_tile.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({this.title});
  final String? title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    getPlantData();
  }

  getPlantData() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Provider.of<PlantDataProvider>(context, listen: false).getPlantData();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getPlantData();
  }

  @override
  void dispose() {
    Provider.of<PlantDataProvider>(context, listen: false).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;

    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor(),
        appBar: appBar(context),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  args.title.toString(),
                  style: headerStyle,
                ),
              ),
              Expanded(
                flex: 10,
                child: Consumer<PlantDataProvider>(
                    builder: (context, snapshot, child) {
                  return Container(
                    height: deviceHeight(context),
                    width: deviceWidth(context),
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: snapshot.isLoading() == true
                        ? Center(child: CircularProgressIndicator())
                        : StaggeredGridView.countBuilder(
                            physics: BouncingScrollPhysics(),
                            staggeredTileBuilder: (int index) =>
                                new StaggeredTile.count(2, index.isOdd ? 4 : 3),
                            itemCount: snapshot.plantData != null
                                ? snapshot.plantData!.dataLength
                                : 8,
                            crossAxisCount: 4,
                            mainAxisSpacing: 4.0,
                            crossAxisSpacing: 4.0,
                            itemBuilder: (context, i) {
                              print(snapshot.plantData);
                              return GridViewListTile(snapshot, i);
                            },
                          ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
