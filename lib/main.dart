import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imperia_hub/di/di.dart';
import 'package:imperia_hub/firebase_options.dart';

import 'app/app.dart';

bool shouldUseFirebaseEmulator = false;
late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async {
  setup();
  await setupFirebase();
  runApp(const ImperiaHubApp());
}

setupFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    name: "Imperia-Hub",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);

  if (shouldUseFirebaseEmulator) {
    await auth.useAuthEmulator('localhost', 9099);
  }
}
