import 'package:flutter/material.dart';
import 'package:p_home/common/app_shadow.dart';

Expanded infoCard({
  required BuildContext context,
  required String nameInfo,
  required String contentInfo,
  required String iconInfo,
  required Color colorInfo,
}) {
  return Expanded(
    child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 19),
        // width: MediaQuery.of(context).size.width*0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colorInfo,
            boxShadow: AppShadow.appShadow),
        // constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nameInfo,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Image.asset(
                  iconInfo,
                  height: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  "$contentInfo °C",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        )),
  );
}
