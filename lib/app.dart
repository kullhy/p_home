import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_home/pages/control_panel/light_control/light_control.dart';
import 'package:p_home/pages/control_panel/light_control/light_control_view_model.dart';
import 'package:p_home/pages/home/components/living_room_widget.dart';
import 'package:p_home/pages/home/home_page.dart';
import 'package:p_home/pages/home/view_model/home_view_model.dart';
import 'package:p_home/pages/home/view_model/info_view_model.dart';
import 'package:p_home/pages/home/view_model/living_room_view_model.dart';
import 'package:p_home/pages/info_page/info_page.dart';
import 'package:p_home/pages/router.dart';
import 'package:provider/provider.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LivingRoomViewModel>(
          create: (_) => LivingRoomViewModel(),
          child: const LivingRoomWidget(),
        ),
        ChangeNotifierProvider<InfoViewModel>(
          create: (_) => InfoViewModel(),
          child: const InfoPage(),
        ),
        ChangeNotifierProvider<HomeViewModel>(
          create: (_) => HomeViewModel(),
          child: const HomePage(),
        ),
        ChangeNotifierProvider<LightControlViewModel>(
          create: (_) => LightControlViewModel(),
          child: const LightControl(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter IoT UI Challenge',
        theme: ThemeData(
            textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
              bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
            ),
            fontFamily: "Poppins",
            sliderTheme: const SliderThemeData(
              trackShape: RectangularSliderTrackShape(),
              trackHeight: 2.5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
            )),
        home: RouterPage(),
      ),
    );
  }
}
