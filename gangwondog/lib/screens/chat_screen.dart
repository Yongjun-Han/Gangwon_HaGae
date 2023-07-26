import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "채팅",
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
        children: [Center(child: Text("CHAT"))],
      ),
    );
  }
}
