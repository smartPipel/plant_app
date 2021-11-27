import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/constants/constant.dart';
import 'package:myapp/constants/iconsku_icons.dart';
import 'package:myapp/ui/pages/detail_page.dart';
import 'package:myapp/ui/widgets/menu_dashboard.dart';
import 'package:myapp/ui/widgets/menu_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  String? _valFriends;

  List _myFriends = [
    "Palawija",
    "Horticultura",
    "Tanaman Hias",
    "Perkebunan",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Home",
        //     style: titleStyle,
        //   ),
        //   elevation: 0,
        //   titleSpacing: 20,
        //   backgroundColor: greenColor(),
        //   actions: [
        //     Container(
        //       padding: EdgeInsets.only(right: 20),
        //       // margin: EdgeInsets.only(right: 20.0),
        //       child: Icon(
        //         Iconsku.settings_future,
        //         color: darkColor(),
        //       ),
        //     )
        //   ],
        // ),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              height: deviceHeight(context) * .08,
              margin: EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: _searchController,
                        onChanged: (val) => {print('changed')},
                        onSaved: (val) => {print('saved')},
                        onFieldSubmitted: (val) => {print('submited')},
                        onEditingComplete: () => {print('complete')},
                        scrollPhysics: BouncingScrollPhysics(),
                        // expands: true,
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: darkColor()),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Search',
                          contentPadding:
                              EdgeInsets.only(top: 10, left: 20, bottom: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: greyColor()),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      tooltip: 'Settings',
                      onPressed: () {},
                      icon: Icon(Iconsku.settings_future),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Builder(builder: (context) {
                      return IconButton(
                        color: greenColor(),
                        tooltip: 'Filter',
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: DropdownButton(
                                // alignment: Alignment.centerRight,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 100),
                                    child: Icon(Iconsku.chevron_down)),
                                hint: Text("Pilih jenis tanaman"),
                                value: _valFriends,
                                items: _myFriends.map((value) {
                                  return DropdownMenuItem(
                                    alignment: Alignment.center,
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _valFriends = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          );
                          // Scaffold.of(context).showBottomSheet<void>(
                          //     (BuildContext context) {
                          //   return Container(
                          //     decoration: BoxDecoration(
                          //         color: greyColor(),
                          //         borderRadius: BorderRadius.circular(20)),
                          //     height: deviceHeight(context) * .6,
                          //     child: Center(
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         mainAxisSize: MainAxisSize.min,
                          //         children: [
                          //           const Text('BottomSheet'),
                          //           ElevatedButton(
                          //               child: const Text('Close BottomSheet'),
                          //               onPressed: () {
                          //                 Navigator.pop(context);
                          //               }),

                          //         ],
                          //       ),
                          //     ),
                          //   );
                          // }, backgroundColor: Colors.transparent);
                        },
                        icon: Icon(Icons.filter_list_outlined),
                      );
                    }),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      color: Colors.red,
                      tooltip: 'Log Out',
                      onPressed: () {},
                      icon: Icon(Iconsku.log_out),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: deviceHeight(context) * .85,
              child: DetailPage(),
            )
          ],
        ),

        // body: Stack(
        //   children: [
        //     Container(
        //       child: Image.asset(
        //         imageAssets + "bg_home_menu.png",
        //         fit: BoxFit.fill,
        //       ),
        //       height: deviceHeight(context) * .4,
        //       width: deviceWidth(context),
        //     ),
        //     Container(
        //       child: Column(
        //         children: [
        //           Container(
        //             margin: EdgeInsets.only(top: 20),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Container(
        //                   margin: EdgeInsets.only(left: 20),
        //                   child: Text(
        //                     "Hello selamat datang, \nAlvin",
        //                     style: headerStyle,
        //                   ),
        //                 ),
        //                 Container(
        //                     width: 50,
        //                     height: 50,
        //                     decoration: BoxDecoration(
        //                         color: lightColor(),
        //                         shape: BoxShape.circle,
        //                         boxShadow: [
        //                           BoxShadow(
        //                             color: greyColor(),
        //                             spreadRadius: 5,
        //                             blurRadius: 6,
        //                             offset: Offset(0, 0),
        //                           )
        //                         ]),
        //                     margin: EdgeInsets.only(right: 20),
        //                     child: Center(
        //                       child: Icon(
        //                         Iconsku.log_out,
        //                         color: darkColor(),
        //                       ),
        //                     ))
        //               ],
        //             ),
        //           ),
        //           Container(
        //             height: deviceHeight(context) * .15,
        //             width: deviceWidth(context),
        //             margin: EdgeInsets.all(20),
        //             decoration: BoxDecoration(),
        //             child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   MenuDashboard(),
        //                   MenuDashboard(),
        //                 ]),
        //           ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   margin: EdgeInsets.only(right: 20, left: 20),
        //   width: deviceWidth(context),
        //   height: deviceHeight(context) * .45,
        //   decoration: BoxDecoration(
        //       color: greyColor().withOpacity(0.9),
        //       borderRadius: BorderRadius.circular(15)),
        //   child: ListView.builder(
        //     itemCount: imageList.length,
        //     itemBuilder: (context, i) {
        //       return MenuList(
        //         image: imageList[i],
        //         title: titleList[i],
        //       );
        //     },
        //   ),
        // ),
        // ],
        // ),
        // ),
        // ],
        // ),
      ),
    );
  }
}
