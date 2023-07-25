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
        child: const Scaffold(
          backgroundColor: mainDark,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
      );
    });
  }
}
