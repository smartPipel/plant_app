import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/models/arguments.dart';
import 'package:myapp/models/plant_data_provider.dart';
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
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Provider.of<PlantDataProvider>(context, listen: false).getPlantData();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getPlantData();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlantDataProvider>(context, listen: false);

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
                child: Container(
                  height: deviceHeight(context),
                  width: deviceWidth(context),
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: provider.isLoading == true
                      ? Center(child: CircularProgressIndicator())
                      : StaggeredGridView.countBuilder(
                          physics: BouncingScrollPhysics(),
                          staggeredTileBuilder: (int index) =>
                              new StaggeredTile.count(2, index.isOdd ? 4 : 3),
                          itemCount: provider.plantData!.dataLength,
                          crossAxisCount: 4,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                          itemBuilder: (context, i) {
                            print(provider.plantData);
                            return GridViewListTile(provider, i);
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
