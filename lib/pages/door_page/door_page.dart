import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:p_home/common/app_shadow.dart';

class DoorPage extends StatelessWidget {
  const DoorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Door",
          style: TextStyle(
              fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Warning",
          style: TextStyle(
              fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              boxShadow: AppShadow.appShadow),
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.info_outline),
              SizedBox(
                width: 10,
              ),
              Text("There are no strangers trying to get into your home"),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "History",
          style: TextStyle(
              fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: AppShadow.appShadow),
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.info_outline),
              SizedBox(
                width: 10,
              ),
              Text("There are no strangers trying to get into your home"),
            ],
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 50),
          child: AvatarGlow(
            endRadius: 95,
            animate: true,
            duration: const Duration(milliseconds: 2000),
            glowColor: Colors.blue.shade300,
            repeat: true,
            repeatPauseDuration: const Duration(milliseconds: 50),
            showTwoGlows: true,
            child: GestureDetector(
              onTapDown: (details) async {
                if (true) {}
              },
              onTapUp: (details) {},
              child: CircleAvatar(
                backgroundColor: Colors.blue[300],
                radius: 50,
                child: const Icon(
                  true ? Icons.door_sliding : Icons.mic_none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
