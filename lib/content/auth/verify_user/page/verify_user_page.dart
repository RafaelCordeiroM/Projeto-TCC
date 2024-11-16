import 'package:fiscal_validator/content/auth/verify_user/controller/verify_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyUserPage extends StatefulWidget {
  const VerifyUserPage({super.key});

  @override
  State<VerifyUserPage> createState() => _VerifyUserPageState();
}

class _VerifyUserPageState extends State<VerifyUserPage> {
  final _controller = Get.isRegistered<VerifyUserController>() ? Get.find<VerifyUserController>() : Get.put(VerifyUserController());

  @override
  void initState() {
    _controller.verifyLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
