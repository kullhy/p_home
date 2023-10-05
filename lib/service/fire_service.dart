import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:p_home/main.dart';
import 'package:p_home/service/noti_service.dart';

void getFireData() {
  try {
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('state_fire');
    starCountRef.onValue.listen(
      (DatabaseEvent event) async {
        final data = event.snapshot.value;
        log(data.toString());
        if (data == true) {
          ringNoti();
          warningType = "fire";
          FlutterOverlayWindow.showOverlay(
            enableDrag: true,
            overlayTitle: "X-SLAYER",
            overlayContent: 'Overlay Enabled',
            flag: OverlayFlag.defaultFlag,
            visibility: NotificationVisibility.visibilityPublic,
            positionGravity: PositionGravity.auto,
            height: 500,
            width: WindowSize.matchParent,
          );
        } else {
          FlutterRingtonePlayer.stop();
        }
      },
    );
  } catch (e) {
    log(e.toString());
  }
}
