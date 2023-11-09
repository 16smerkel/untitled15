import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtuetracker/src/features/authentication/screens/forget_password/forget_password_otp.dart';
import '../../../../utils/theme/widget_themes/background_box_theme.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xFFFEFE5CC),
        body: Container(
          decoration: TBackgroundBoxTheme.lightBackgroundBoxTheme,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("images/virtueLogo.png"),
                      height: 150,
                    ),
                    SizedBox(height: 30.0),
                    Text(
                        "Forget Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                    ),
                    Text(
                      "Select one of these options to reset your password",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("E-Mail"),
                          hintText: "E-Mail",
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const OTPScreen());
                            },
                            child: Text("Next"),
                          )
                      ),
                      SizedBox(height: 400,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}