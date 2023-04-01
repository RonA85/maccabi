import 'package:flutter/material.dart';
import 'package:maccabi/services/http/constants.dart';
import 'package:maccabi/ui/spalsh_screen.dart';

import 'locator.dart';
import 'utils/routes/routes.dart';

void main() async{
  Routes.createRoutes();
  setupLocator(baseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
