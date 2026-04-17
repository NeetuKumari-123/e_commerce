import 'package:e_commerce/my_app.dart';
import 'package:flutter/material.dart';


void main() {
  /// Widget Flutter Binding
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

   /// Flutter Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
