import 'package:firebase_auth/firebase_auth.dart';

class VerifyUserServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> getUser() async {
    User? user = _firebaseAuth.currentUser;

    if (user == null) {
      return null;
    }

    return user;
  }
}
