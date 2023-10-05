// import 'package:flutter/material.dart';
// import 'package:p_home/pages/home/components/share_widget/info_card.dart';
// import 'package:p_home/pages/home/view_model/info_view_model.dart';
// import 'package:provider/provider.dart';

// class InfoWidget extends StatelessWidget {
//   const InfoWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<InfoViewModel>(builder: (context, view, child) {
//       return Column(
//         children: [
//           Row(
//             children: [
//               infoCard(
//                   colorInfo: Colors.white,
//                   context: context,
//                   iconInfo: "assets/images/in_temp.jpg",
//                   nameInfo: "Nhiệt độ Phòng",
//                   contentInfo: view.roomTemp.toString()),
//               const SizedBox(
//                 width: 8,
//               ),
//               infoCard(
//                   colorInfo: Colors.white,
//                   context: context,
//                   iconInfo: "assets/images/out_temp.png",
//                   nameInfo: "Nhiệt độ ngoài trời",
//                   contentInfo: view.temp.toString())
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             children: [
//               infoCard(
//                   colorInfo: Colors.white,
//                   context: context,
//                   iconInfo: "assets/images/in_temp.jpg",
//                   nameInfo: "Nhiệt độ Phòng",
//                   contentInfo: view.roomTemp.toString()),
//               const SizedBox(
//                 width: 8,
//               ),
//               infoCard(
//                   colorInfo: Colors.white,
//                   context: context,
//                   iconInfo: "assets/images/out_temp.png",
//                   nameInfo: "Nhiệt độ ngoài trời",
//                   contentInfo: view.temp.toString())
//             ],
//           )
//         ],
//       );
//     });
//   }
// }
