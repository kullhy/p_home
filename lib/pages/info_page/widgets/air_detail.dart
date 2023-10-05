import 'package:flutter/material.dart';

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../common/app_shadow.dart';

class DetailsAirWidget extends StatelessWidget {
  const DetailsAirWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              "Air",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w100),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 35),
          // height: 500,
          decoration: BoxDecoration(
              boxShadow: AppShadow.appShadow,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white),
          child: const Column(children: [
            ItemDetailWidget(
              iteamName: "PM2.5",
              iteamInfo: 'pm2.5',
              iteamIndex: 250,
              iteamIndexMax: 100,
            ),
            ItemDetailWidget(
              iteamName: "CO",
              iteamInfo: "(Carbon Monoxide)\n",
              iteamIndex: 80,
              iteamIndexMax: 100,
            ),
            ItemDetailWidget(
              iteamName: "NH3",
              iteamInfo: "(Amonia)\n",
              iteamIndex: 80,
              iteamIndexMax: 100,
            ),
          ]),
        )
      ],
    );
  }
}

class ItemDetailWidget extends StatelessWidget {
  const ItemDetailWidget({
    super.key,
    required this.iteamName,
    required this.iteamIndex,
    required this.iteamIndexMax,
    required this.iteamInfo,
  });

  // final AirData airData;
  final String iteamName;
  final String iteamInfo;
  final double? iteamIndex;
  final double iteamIndexMax;

  @override
  Widget build(BuildContext context) {
    double percent = iteamIndex! / iteamIndexMax;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SleekCircularSlider(
            min: 0,
            max: percent < 100 ? 100 : 200,
            initialValue: iteamIndex! / iteamIndexMax,
            appearance: CircularSliderAppearance(
                angleRange: 360,
                size: 50,
                customColors: CustomSliderColors(
                    trackColor: Color.fromARGB(255, 54, 53, 53),
                    progressBarColors: [
                      const Color.fromARGB(255, 73, 83, 74),
                      Colors.green
                    ])),
          ),
          const SizedBox(
            width: 15,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "$iteamName\n",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: iteamInfo,
                style: const TextStyle(
                    overflow: TextOverflow.clip,
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
              TextSpan(
                text: "$iteamIndex μg/m3",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
