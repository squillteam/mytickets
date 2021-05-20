import 'package:flutter/material.dart';
import 'package:mytickets/app/helpers/widgets/provider.dart';
import 'package:mytickets/app/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {

  static final String routeName = "/home";

  final HomeController _controller = HomeController();

  @override 
  Widget build(BuildContext context) {
    return Provider<HomeController>(
      controller: _controller,
      screen: _screen
    );
  }


  Widget _screen() {
    return Container(
      color: Colors.purple,
    );
  }
}