import 'package:flutter/material.dart';
import 'package:p_home/common/app_shadow.dart';
import 'package:p_home/pages/home/components/share_widget/devices.dart';
import 'package:p_home/utils/string_to_color.dart';
import 'package:provider/provider.dart';
import '../view_model/living_room_view_model.dart';

class LivingRoomWidget extends StatefulWidget {
  const LivingRoomWidget({Key? key}) : super(key: key);

  @override
  State<LivingRoomWidget> createState() => _LivingRoomWidgetState();
}

class _LivingRoomWidgetState extends State<LivingRoomWidget> {
  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<LivingRoomViewModel>(context, listen: false);

    return Consumer<LivingRoomViewModel>(builder: (ctx, view, child) {
      if (view.isShow == false) {
        return InkWell(
          onTap: () {
            view.showMore();
          },
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: AppShadow.appShadow),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/living_room.png",
                    height: 30,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "Living Room",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        view.showMore();
                      },
                      icon: const Icon(Icons.expand_more))
                ],
              )),
        );
      } else {
        return InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: AppShadow.appShadow,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A total of 4 devices",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "Living Room",
                            style: TextStyle(
                                height: 1.1,
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Transform.rotate(
                        angle: 3.14159,
                        child: IconButton(
                            onPressed: () {
                              view.showMore();
                            },
                            icon: Icon(
                              Icons.expand_more,
                              color: Colors.grey[300],
                              size: 30,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 4,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: view.devices.length,
                      itemBuilder: (BuildContext ctx, index) {
                        final device = view.devices[index];
                        return Devices(
                          key: ValueKey(
                              device), // Key được tạo dựa trên đối tượng
                          name: device.name,
                          svg: device.icon,
                          color: device.color.toColor(),
                          isActive: device.isActive,
                          onChanged: (val) {
                            view.changeDevices(index);
                          },
                          navigatorPussh: view.controlPage[index],
                        );
                      }),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
