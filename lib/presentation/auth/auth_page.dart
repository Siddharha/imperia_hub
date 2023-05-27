import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imperia_hub/main.dart';
import 'package:imperia_hub/presentation/resources/asset_manager.dart';
import 'package:imperia_hub/presentation/resources/routes_manager.dart';
import 'package:imperia_hub/presentation/resources/styles_manager.dart';

import 'components/auth_components.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "logo",
            child: SvgPicture.asset(
              logo,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Login",
              style: getLoginTitleStyle(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AuthInputComponent(
              labelText: "Enter Your name",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: AuthInputComponent(
              labelText: "Enter phone number",
            ),
          ),
          ElevatedButton(
              style: getNormalButtonStyle(),
              onPressed: () async {
                // try {
                //   await FirebaseAuth.instance
                //       .verifyPhoneNumber(
                //     phoneNumber: '+91 9564751914',
                //     verificationCompleted: (PhoneAuthCredential credential) {},
                //     verificationFailed: (FirebaseAuthException e) {
                //       //print(credential.smsCode);
                //     },
                //     codeSent: (String verificationId, int? resendToken) {},
                //     codeAutoRetrievalTimeout: (String verificationId) {},
                //   )
                //       .then((value) {
                //     print("success");
                //   });
                // } catch (e) {
                //   print(e);
                // }

                Navigator.pushReplacementNamed(context, Routes.landingRoute);
              },
              child: const Text("Log In"))
        ],
      ),
    );
  }
}
