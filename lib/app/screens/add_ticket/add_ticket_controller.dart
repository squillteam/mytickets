/// External package
import 'package:flutter/material.dart';
/// Internal package
import 'package:mytickets/app/helpers/abstractions/controller.dart';

/// Add Ticket Controller
class AddTicketController extends Controller {

  BuildContext? _context;

  void log(String message) => print("[ AddTicket Controller ]: $message");

  @override
  void init(BuildContext context) {
    _context = context;

    log("init");
  } 

  @override
  void builded() {
    log("builded");
  }

  @override
  void dispose() {
    log("dispose");
  }
}