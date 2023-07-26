import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "위시리스트",
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
        children: [Center(child: Text("WISH"))],
      ),
    );
  }
}
