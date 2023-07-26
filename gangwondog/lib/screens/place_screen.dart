import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "둘러보기",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: const Icon(Icons.menu),
        ),
      ),
      body: const Column(
        children: [Center(child: Text("PLACE"))],
      ),
    );
  }
}
