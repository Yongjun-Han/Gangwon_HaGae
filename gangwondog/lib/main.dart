import 'package:flutter/material.dart';
import 'package:gangwondog/controllers/login_provider.dart';
import 'package:gangwondog/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginNotifier()),
      ],
      child: const _App(),
    ),
  );
}

class _App extends StatelessWidget {
  const _App();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // home: const OnBoard(),
    );
  }
}
