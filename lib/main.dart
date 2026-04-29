import 'package:e_commerce/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  /// Widget Flutter Binding
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

// portrait up the device
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
   /// Flutter Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
