import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

void ringNoti(){
  FlutterRingtonePlayer.play(
  fromAsset: "assets/audio/warning.wav",
  ios: IosSounds.glass,
  looping: true, // Android only - API >= 28
  volume: 1, // Android only - API >= 28
  asAlarm: false, // Android only - all APIs
);
}