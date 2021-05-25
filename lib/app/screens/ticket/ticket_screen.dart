/// External packages
import 'package:flutter/material.dart';
/// Internal packages
import 'package:mytickets/app/helpers/widgets/provider.dart';
import 'package:mytickets/app/screens/ticket/ticket_controller.dart';

/// Ticket Screen
class TicketScreen extends StatelessWidget {
  
  static final String routeName = "/ticket";

  final TicketController _controller = TicketController();

  @override 
  Widget build(BuildContext context) {
    return Provider(
      controller: _controller, 
      screen: _screen
    );
  }

  Widget _screen() {
    return Container();
  }
}