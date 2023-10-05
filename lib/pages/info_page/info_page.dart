import 'package:flutter/material.dart';
import 'package:p_home/pages/info_page/widgets/air_detail.dart';
import 'package:p_home/pages/info_page/widgets/info_card.dart';
import 'package:provider/provider.dart';

import '../home/view_model/info_view_model.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InfoViewModel>(builder: (context, view, child) {
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Temporary",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w100),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  infoCard(
                      colorInfo: Colors.white,
                      context: context,
                      iconInfo: "assets/images/in_temp.jpg",
                      nameInfo: "Nhiệt độ Phòng",
                      contentInfo: view.roomTemp.toString()),
                  const SizedBox(
                    width: 8,
                  ),
                  infoCard(
                      colorInfo: Colors.white,
                      context: context,
                      iconInfo: "assets/images/out_temp.png",
                      nameInfo: "Nhiệt độ ngoài trời",
                      contentInfo: view.temp.toString())
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const DetailsAirWidget(),
            ],
          ),
        ),
      );
    });
  }
}
