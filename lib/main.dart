import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtuetracker/firebase_options.dart';
import 'package:virtuetracker/src/features/authentication/screens/welcome/welcome_screen.dart';
//import 'package:virtuetracker/src/features/repository/authentication_repository/authentication_repository.dart';
import 'package:virtuetracker/src/utils/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // flutter run lib\main.dart 2
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: VirtueTheme.lightTheme,
      darkTheme: VirtueTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const WelcomeScreen(),
    );
  }
}
