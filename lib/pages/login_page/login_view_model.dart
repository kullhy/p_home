import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:p_home/pages/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ChangeNotifier {
  bool isLoading = false;
  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        isLoading = false;
        notifyListeners();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLogin', true);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomBar()),
        );
      } else {
        isLoading = false;
      notifyListeners();

      }
      // Đăng nhập thành công, bạn có thể thực hiện các tác vụ sau khi đăng nhập ở đây.
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      log(e.code.toString());
      if (e.code == 'user-not-found') {
        print('Không tìm thấy người dùng với email này.');
      } else if (e.code == 'wrong-password') {
        print('Sai mật khẩu.');
      }
    }
  }
}
