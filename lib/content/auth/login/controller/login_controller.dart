import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiscal_validator/content/auth/login/services/login_services.dart';
import 'package:fiscal_validator/content/auth/verify_user/page/verify_user_page.dart';
import 'package:fiscal_validator/content/home/pages/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Rx<User?> loggedUser = Rx<User?>(null);

  RxBool isLoading = RxBool(false);

  final LoginServices _loginServices = LoginServices();

  Future loginWithGoogle() async {
    isLoading.value = true;
    User? singedUser = await _loginServices.signInWithGoogle();

    if (singedUser == null) {
      isLoading.value = false;
      Get.showSnackbar(GetSnackBar(
        title: 'Houve um problema ao tentar entrar',
        message: 'Parece que você cancelou o seu login com o Google, teve um problema de conexão ou ocorreu um erro interno ao entrar com a sua conta Google!',
      ));
      return;
    }

    loggedUser.value = singedUser;
    Get.offAll(() => HomePage());
    isLoading.value = false;
    return;
  }

  Future logout() async {
    isLoading.value = true;

    await _loginServices.singOut();

    loggedUser.value = null;

    Get.offAll(() => VerifyUserPage());

    isLoading.value = false;
  }
}
