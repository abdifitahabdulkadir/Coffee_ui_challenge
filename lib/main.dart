import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/Feature/Presentation/Screens/home_screen.dart';
import '/core/coffe_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: CoffeColors.appBarColor,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // showPerformanceOverlay: true,
      home: HomeScreen(),
    );
  }
}
