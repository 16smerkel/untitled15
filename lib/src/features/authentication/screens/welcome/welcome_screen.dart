import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtuetracker/src/features/authentication/screens/login/login_screen.dart';
import 'package:virtuetracker/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:virtuetracker/src/utils/theme/widget_themes/background_box_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: Color(0xFFFEFE5CC),
        body: Container(
          decoration:  isDarkMode
              ? TBackgroundBoxTheme.darkBackgroundBoxTheme
              : TBackgroundBoxTheme.lightBackgroundBoxTheme,
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Image(
                image: AssetImage("images/virtueLogo.png"),
                height: height * 0.6,
                width: 250,
              ),
              Column(
                children: [
                  Text(
                    "Track Your Virtues",
                    // style: Theme.of(context).textTheme.headline3,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text("The journey starts with just one entry...",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyLarge,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 10,),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          //LoginScreen()),
                          child: Text("LOGIN"))
                  ),
                  const SizedBox(width: 10.0),

                  Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const SignUpScreen()),
                        child: Text("SIGN UP")),
                  ),

                ],
              ),
            ],
          ),
        )
    );
  }
}