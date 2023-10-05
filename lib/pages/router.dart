

import 'package:flutter/material.dart';
import 'package:p_home/main.dart';
import 'package:p_home/pages/bottom_bar.dart';
import 'package:p_home/pages/login_page/login_page.dart';
import 'package:p_home/pages/no_internet/no_internet_page.dart';

class RouterPage extends StatelessWidget {
  const RouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (!isInternet) {
      return NoInternetPage();
    } else if (isLogin==null) {
      return LoginPage();
    } else {
      return BottomBar();
    }
  }
}
