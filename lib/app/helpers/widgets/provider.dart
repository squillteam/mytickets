import 'package:flutter/material.dart';
import 'package:mytickets/app/helpers/abstractions/controller.dart';

typedef Screen = Widget Function(); 

/// Provider
class Provider<T extends Controller> extends StatefulWidget {

  final T controller;
  final Screen screen;

  const Provider({
    Key? key,
    required this.controller,
    required this.screen
  }): super(key: key);

  /// Get controller
  static T of<T extends Controller>(BuildContext context) {
    // Finding provider widget 
    Provider<T> provider = context.findAncestorWidgetOfExactType<Provider<T>>()!;
    // Return provider widget controller
    return provider.controller;
  }

  @override 
  State<StatefulWidget> createState() {
    return _ProviderState();
  }

}

/// Provider State
class _ProviderState extends State<Provider> {

  Screen get screen => this.widget.screen;
  Controller get controller => this.widget.controller;

  @override
  void initState() {
    super.initState();

    controller.init(context);

    WidgetsBinding.instance!.addPostFrameCallback((Duration timeStamp) {
      controller.builded();
    });
  }

  @override 
  Widget build(BuildContext context) {
    return screen();
  }

  @override 
  void dispose() {
    super.dispose();
    controller.dispose();
  }

}