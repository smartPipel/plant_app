import 'package:flutter/material.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/ui/routes/router_list.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _goToHomeScreen() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushNamedAndRemoveUntil(
        context, routeHomeScreen, (route) => false);
  }

  @override
  void initState() {
    this._goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenColor(),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
