import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiscal_validator/content/auth/login/page/login_page.dart';
import 'package:fiscal_validator/content/auth/verify_user/services/verify_user_services.dart';
import 'package:fiscal_validator/content/home/pages/home_page.dart';
import 'package:get/get.dart';

class VerifyUserController extends GetxController {
  final VerifyUserServices _verifyUserServices = VerifyUserServices();

  Future verifyLogin() async {
    User? user = await _verifyUserServices.getUser();

    print('${user?.displayName}');

    if (user == null) {
      Get.offAll(() => LoginPage());
      return;
    }

    Get.offAll(() => HomePage());
    return;
  }
}
