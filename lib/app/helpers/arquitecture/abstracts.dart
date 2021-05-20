import 'package:flutter/material.dart';


/// Controller
/// 
/// This controller is used to connect with the [Provider], so it makes it 
/// possible to work with many states and saves reloading the screen.
abstract class Controller {
  // Set context.
  set context(BuildContext context);
  // Build is executed before rendering the screen, just once.
  void build();
  // Builded is executed after rendering the screen, just once.
  void builded();
  // Dipose is executed on closing the screen.
  void dispose();
}