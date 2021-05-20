import 'package:flutter/material.dart';
import 'package:mytickets/app/screens/home/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tickets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (BuildContext context) => HomeScreen()
      },
    );
  }
}


