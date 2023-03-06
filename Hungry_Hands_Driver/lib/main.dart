import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/services.dart';
import 'package:hungry_hands_driver/splash%20screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const GetMaterialApp(
=======
    return GetMaterialApp(
>>>>>>> ef3512d833c03afd54483327fe1973feaf425d69
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
