/// External package
import 'package:flutter/material.dart' show BuildContext;
/// Internal package
import 'package:mytickets/app/helpers/abstractions/controller.dart';

/// Home Controller
class HomeController extends Controller {

  BuildContext? _context;

  void log(String message) => print("[ Home Controller ]: $message");

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