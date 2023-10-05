import 'package:flutter/material.dart';
import 'package:p_home/common/app_shadow.dart';

class SkyLightWidget extends StatelessWidget {
  const SkyLightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: AppShadow.appShadow),
        child: Row(
          children: [
            Icon(
              Icons.wb_sunny_outlined,
              size: 30,
            ),
            const SizedBox(
              width: 30,
            ),
            const Text(
              "skylight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Switch(value: true, onChanged: (value) {})
          ],
        ));
  }
}
