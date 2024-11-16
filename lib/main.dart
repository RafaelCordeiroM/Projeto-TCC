import 'package:firebase_core/firebase_core.dart';
import 'package:fiscal_validator/content/auth/verify_user/page/verify_user_page.dart';
import 'package:fiscal_validator/firebase_options.dart';
import 'package:fiscal_validator/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appThemeData,
      debugShowCheckedModeBanner: false,
      home: const VerifyUserPage(),
    );
  }
}
