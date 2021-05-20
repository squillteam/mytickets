import 'package:flutter/material.dart' show BuildContext;
import 'package:mytickets/app/helpers/arquitecture/abstracts.dart';

class HomeController extends Controller {

  BuildContext? _context;

  void log(String message) => print("[ Home Controller ]: $message");

  @override
  void build() {
    log("build");
  }

  @override
  void builded() {
    log("builded");
  }

  @override
  set context(BuildContext context) {
    log("context");
    _context ??= context;
  }

  @override
  void dispose() {
    log("dispose");
  }

}