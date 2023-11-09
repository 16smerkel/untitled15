import 'package:flutter/material.dart';
//import 'package:virtuetracker/src/features/authentication/screens/signup/signup_form_widget.dart';

import '../../../../utils/theme/widget_themes/background_box_theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.yellow[100],
          appBar: AppBar(
            backgroundColor: Colors.orange[300],
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: TBackgroundBoxTheme.lightBackgroundBoxTheme,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage("images/virtueLogo.png"),
                        height: 120,
                      ),
                      Text("Almost Virtue Time!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold) ),
                      Text("Create your profile to start your journey.",),
                    ],
                  ),
                  //SignUpFormWidget(),
                ],
              ),
            ),
          ),
        )
    );
  }
}
