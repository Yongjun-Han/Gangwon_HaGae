import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/zoom_provider.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  final ValueSetter indexSetter;

  const DrawerScreen({
    super.key,
    required this.indexSetter,
  });

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZoomNotifier>(builder: (context, zoomNotifier, child) {
      return GestureDetector(
        onDoubleTap: () {
          ZoomDrawer.of(context)!.toggle();
        },
        child: Scaffold(
          backgroundColor: mainDark,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              drawerMenu(
                  "홈",
                  Icons.home_filled,
                  zoomNotifier.currentIndex == 0 ? Colors.white : disabledColor,
                  0),
              const SizedBox(
                height: 24,
              ),
              drawerMenu(
                  "업체 정보 둘러보기",
                  Icons.travel_explore_rounded,
                  zoomNotifier.currentIndex == 1 ? Colors.white : disabledColor,
                  1),
              const SizedBox(
                height: 24,
              ),
              drawerMenu(
                  "위시리스트",
                  Icons.favorite_border_rounded,
                  zoomNotifier.currentIndex == 2 ? Colors.white : disabledColor,
                  2),
              const SizedBox(
                height: 24,
              ),
              drawerMenu(
                  "채팅",
                  Icons.chat_outlined,
                  zoomNotifier.currentIndex == 3 ? Colors.white : disabledColor,
                  3),
            ],
          ),
        ),
      );
    });
  }

  Widget drawerMenu(String title, IconData icon, Color color, int index) {
    return GestureDetector(
      onTap: () {
        widget.indexSetter(index);
        ZoomDrawer.of(context)!.toggle();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          color: Colors.transparent,
          height: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: color,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
