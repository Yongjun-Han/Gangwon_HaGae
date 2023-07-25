import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/zoom_provider.dart';
import 'package:gangwondog/screens/drawer/drawer_screen.dart';
import 'package:gangwondog/screens/main_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZoomNotifier>(builder: (context, zoomNotifier, child) {
      return ZoomDrawer(
        menuScreen: DrawerScreen(indexSetter: (index) {
          zoomNotifier.currentIndex = index;
        }),
        mainScreen: const MainScreen(),
        borderRadius: 30,
        showShadow: true,
        angle: 0,
        slideWidth: 250,
        menuBackgroundColor: mainDark,
      );
    });
  }
}
