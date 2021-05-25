/// External package
import 'package:flutter/material.dart';
/// Enternal packages
import 'package:mytickets/app/helpers/widgets/provider.dart';
import 'package:mytickets/app/screens/add_ticket/add_ticket_controller.dart';

/// Add Ticket Screen
class AddTicketScreen extends StatelessWidget {

  static final String routeName = "/add_ticket";

  final AddTicketController _controller = AddTicketController();

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