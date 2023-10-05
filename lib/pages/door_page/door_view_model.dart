// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:p_home/pages/home/view_model/living_room_view_model.dart';
// import 'package:provider/provider.dart';
// import 'package:speech_to_text/speech_recognition_error.dart';
// import 'package:speech_to_text/speech_to_text.dart';

// class DoorViewModel extends ChangeNotifier {

//   bool isListening = false;




//   void onSpeech(BuildContext context) {
//     isListening = true;
//     speechToText.listen(
//       onResult: (result) {
//         log(result.recognizedWords);
//         screensText = result.recognizedWords;
//         checkText(screensText, context);
//       },
//     );
//     notifyListeners();
//   }

//   void onDisSpeech() {
//     isListening = false;

//     speechToText.stop();
//     notifyListeners();
//   }

//   void speak(String text) async {
//     await flutterTts.setLanguage('en-US');
//     try {
//       await flutterTts.speak(text);
//     } catch (e) {
//       log(e.toString());
//     } // Thay đổi ngôn ngữ tùy theo nhu cầu
//   }

//   void checkText(String text, BuildContext context) {
//     if (turnOnLight.contains(text)) {
//       speak("light is opening");
//       Provider.of<LivingRoomViewModel>(context, listen: false)
//           .turnLight(0, true);
//     }
//   }
// }
