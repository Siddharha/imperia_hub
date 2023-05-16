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
              onPressed: () {
                // try {
                //   final credential = await auth.createUserWithEmailAndPassword(
                //     email: "siddhartha@gmail.com",
                //     password: "123456",
                //   );
                //   print(credential.user?.displayName);
                // } on FirebaseAuthException catch (e) {
                //   if (e.code == 'weak-password') {
                //     print('The password provided is too weak.');
                //   } else if (e.code == 'email-already-in-use') {
                //     print('The account already exists for that email.');
                //   }
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
