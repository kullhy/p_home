import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foreground_service/flutter_foreground_service.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:p_home/app.dart';
import 'package:p_home/service/fire_service.dart';

import 'package:p_home/service/gas_service.dart';
import 'package:p_home/widgets/gas_overlay.dart';
import 'package:p_home/widgets/true_overlay.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isInternet = true;
bool? isLogin = false;
String warningType = "";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ForegroundService().start();
  checkInternet();
  checkLogin();
  checkPermission();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    log(e.toString());
  }
  getFireData();
  getGasData();
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

@pragma("vm:entry-point")
void overlayMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: warningType=="gas"? TrueCallerOverlay():GasOverlay()
    ),
  );
}

void checkInternet() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    isInternet = false;
  }
}

Future<void> checkPermission() async {
  final status = await FlutterOverlayWindow.isPermissionGranted();
  if (!status) {
    FlutterOverlayWindow.requestPermission();
  }
}

void checkLogin() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isLogin = prefs.getBool('isLogin');
  log(isLogin.toString());
}
