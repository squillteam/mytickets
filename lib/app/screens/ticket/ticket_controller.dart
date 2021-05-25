/// External package
import 'package:flutter/material.dart';
/// Internal package
import 'package:mytickets/app/helpers/abstractions/controller.dart';

/// Ticket Controller
class TicketController extends Controller {

  BuildContext? _context;

  @override
  set context(BuildContext context) {
    _context ??= context;
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  void builded() {
    // TODO: implement builded
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}