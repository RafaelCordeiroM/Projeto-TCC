import 'package:fiscal_validator/content/auth/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = Get.isRegistered<LoginController>() ? Get.find<LoginController>() : Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Você não esta logado!',
                style: Get.theme.textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Para sua segurança faça o login usando uma conta google existente em seu dispositivo!',
                style: Get.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              FilledButton(
                onPressed: () => _controller.loginWithGoogle(),
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor: Get.theme.colorScheme.surfaceDim,
                  side: BorderSide(width: 1, color: Get.theme.colorScheme.primary),
                  foregroundColor: Get.theme.colorScheme.primary,
                  alignment: Alignment.center,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        'Entrar com Google',
                        style: Get.theme.textTheme.bodyLarge!.copyWith(color: Get.theme.colorScheme.primary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset('assets/google-logo.svg')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
