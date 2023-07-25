import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  ZoomDrawer.of(context)!.toggle();
                },
                child: const Icon(Icons.menu),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
