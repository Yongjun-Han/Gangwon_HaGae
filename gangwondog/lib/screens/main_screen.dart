import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/zoom_provider.dart';
import 'package:gangwondog/widgets/home_banner.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                const HomeBanner(),
                Positioned(
                  top: 72,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      ZoomDrawer.of(context)!.toggle();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(color: Colors.black, blurRadius: 80.0)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  zoomNotifier.currentIndex = 1;
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: mainDark),
                  width: MediaQuery.of(context).size.width,
                  height: 102,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/logo/splash.png",
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "동반가능 플레이스 찾아보기",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
