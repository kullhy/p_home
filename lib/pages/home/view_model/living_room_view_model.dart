import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:p_home/pages/control_panel/control_panel_page.dart';
import 'package:p_home/pages/control_panel/light_control/light_control.dart';

import '../../../model/device_model.dart';

class LivingRoomViewModel extends ChangeNotifier {
  LivingRoomViewModel() : super() {
    getLightData();
  }

  DatabaseReference ledRef = FirebaseDatabase.instance.ref('led');

  List<DeviceModel> devices = [
    DeviceModel(
        name: 'Smart Spotlight',
        isActive: false,
        color: "#ff5f5f",
        icon: 'assets/svg/light.svg'),
    DeviceModel(
        name: 'Smart AC',
        isActive: true,
        color: "#7739ff",
        icon: 'assets/svg/ac.svg'),
    DeviceModel(
        name: 'Smart TV',
        isActive: false,
        color: "#c9c306",
        icon: 'assets/svg/tv.svg'),
    DeviceModel(
        name: 'Smart Sound',
        isActive: false,
        color: "#c207db",
        icon: 'assets/svg/speaker.svg'),
  ];

  List<Widget> controlPage = [
    const LightControl(),
    const ControlPanelPage(),
    const ControlPanelPage(),
    const ControlPanelPage(),
  ];

  bool isShow = false;

  void getLightData() {
    try {
      DatabaseReference starCountRef = FirebaseDatabase.instance.ref('led');
      starCountRef.onValue.listen(
        (DatabaseEvent event) {
          final data = event.snapshot.value;
          // roomTemp = int.parse(data.toString());

          log(data.toString());
          if (data == 1) {
            devices[0].isActive = true;
          } else {
            devices[0].isActive = false;
          }
          notifyListeners();
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }

  void showMore() {
    isShow = !isShow;
    notifyListeners();
  }

  void changeDevices(
    int index,
  ) {
    devices[index] = DeviceModel(
      name: devices[index].name,
      isActive: !devices[index].isActive,
      color: devices[index].color,
      icon: devices[index].icon,
    );
    if (index == 0) {
      if (devices[index].isActive) {
        ledRef.set(1);
      } else {
        ledRef.set(0);
      }
    }
    notifyListeners();
  }

  void turnLight(int index, bool isTurnOn) {
    devices[0] = DeviceModel(
      name: devices[0].name,
      isActive: isTurnOn,
      color: devices[0].color,
      icon: devices[0].icon,
    );

    if (devices[index].isActive) {
      ledRef.set(1);
    } else {
      ledRef.set(0);
    }

    notifyListeners();
  }
}
