import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:virtuetracker/src/utils/theme/widget_themes/background_box_theme.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var otp;
    return Scaffold(
      //backgroundColor: Colors.yellow[100],
      body: Container(
        decoration: TBackgroundBoxTheme.lightBackgroundBoxTheme,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("CO\nDE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0)),
            Text("Verification", style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 40),
            const Text("Enter the verification code sent from supportvirtuetracker@gmail.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {print("OTP is => $code");},
              //onSubmit: (code) =>
              //{
              // otp = code;
              // OTPController.instance.verifyOTP(otp);
              //print("OTP is => $code")
              //}
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: const Text("Next")),
            ),
          ],
        ),
      ),
    );
  }
}
