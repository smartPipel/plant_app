import 'package:flutter/material.dart';
import 'package:myapp/Arguments/arguments.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title.toString()),
        ),
      ),
    );
  }
}
