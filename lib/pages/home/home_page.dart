// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:p_home/pages/home/components/bed_room_widget.dart';
import 'package:p_home/pages/home/components/skylight_widget.dart';

import 'package:p_home/service/noti_service.dart';

import 'components/living_room_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<TempViewModel>(context, listen: false);
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 252, 225, 238),
                Colors.white
              ]),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: ringNoti,
                  child: Text(
                    "Hi,Kullhi",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(
                    minRadius: 16,
                    backgroundImage: AssetImage("assets/images/user.webp"))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your smart home",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            LivingRoomWidget(),
            SizedBox(
              height: 10,
            ),
            BedRoomWidget(),
            SizedBox(
              height: 30,
            ),
            Text(
              "SkyLight",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            SkyLightWidget(),
          ],
        ),
      ),
    );
  }
}
