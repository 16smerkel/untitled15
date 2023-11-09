import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtuetracker/src/features/authentication/screens/forget_password/forget_password_btn_widget.dart';
import 'package:virtuetracker/src/features/authentication/screens/forget_password/forget_password_mail.dart';
import 'package:virtuetracker/src/utils/theme/widget_themes/background_box_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFEFE5CC),
        body: SingleChildScrollView(
          child: Container(
            decoration: isDarkMode
                ? TBackgroundBoxTheme.darkBackgroundBoxTheme
                : TBackgroundBoxTheme.lightBackgroundBoxTheme,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: const AssetImage("images/virtueLogo.png"),
                      height: size.height * 0.2,
                    ),
                    const Text("Welcome Back,", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold) ),
                    Text(" We can't wait to hear about your day!", style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),

                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: "E-Mail",
                            hintText: "E-Mail",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_sharp)),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                builder: (context) => Container(
                                  padding: const EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFEFE5CC), // makes border radius with colored container
                                    // borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Color(0xFFFEFE5CC), width: 6.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("It's okay if you forgot :)", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold) ),
                                      Text("Select one of the options given below to reset your password", style: Theme.of(context).textTheme.bodyMedium),
                                      const SizedBox(height: 30.0),
                                      ForgetPasswordBtnWidget(
                                        btnIcon: Icons.mail_outline_rounded,
                                        title: "E-Mail",
                                        subTitle: "Reset via E-Mail Verification",
                                        onTap:(){
                                          Navigator.pop(context);
                                          Get.to(() => const ForgetPasswordMailScreen());
                                        },
                                      ),
                                      SizedBox(height: 20.0,),
                                      ForgetPasswordBtnWidget(
                                        btnIcon: Icons.mobile_friendly_outlined,
                                        title: "Phone No",
                                        subTitle: "Reset via Phone Verification",
                                        onTap:(){},
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text("Forget Password"),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: (){},
                              child: Text("LOGIN")),
                        ),
                      ],
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("OR"),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image(image: AssetImage("images/googleLogo.png"), width: 20.0),
                        onPressed: (){},
                        label: Text("Sign-in with Google"),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextButton(
                      onPressed: (){},
                      child: Text.rich(
                        TextSpan(
                          text: "Don't have an Account? ",
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            TextSpan(
                              text: "Signup",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
