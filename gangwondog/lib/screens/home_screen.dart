import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/zoom_provider.dart';
import 'package:gangwondog/screens/chat_screen.dart';
import 'package:gangwondog/screens/drawer/drawer_screen.dart';
import 'package:gangwondog/screens/main_screen.dart';
import 'package:gangwondog/screens/place_screen.dart';
import 'package:gangwondog/screens/wishList_screen.dart';
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
        mainScreen: currentScreen(),
        borderRadius: 30,
        showShadow: true,
        angle: 0,
        slideWidth: 250,
        menuBackgroundColor: mainDark,
      );
    });
  }

  Widget currentScreen() {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);

    switch (zoomNotifier.currentIndex) {
      case 0:
        return const MainScreen();
      case 1:
        return const PlaceScreen();
      case 2:
        return const WishListScreen();
      case 3:
        return const ChatScreen();
      default:
        return const MainScreen();
    }
  }
}
