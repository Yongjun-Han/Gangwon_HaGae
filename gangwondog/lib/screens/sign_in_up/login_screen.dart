import 'package:flutter/material.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/login_provider.dart';
import 'package:gangwondog/screens/home_screen.dart';
import 'package:gangwondog/screens/sign_in_up/registration_screen.dart';
import 'package:gangwondog/widgets/custom_text_input.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(builder: (context, loginNotifier, child) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: mainText,
                      size: 24,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const Registration(),
                        ),
                      );
                    },
                    child: const Text(
                      "회원가입",
                      style: TextStyle(
                        color: mainLight,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "로그인",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mainText,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "아이디",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: mainText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextInput(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "이메일 형식을 확인해주세요";
                  } else {
                    return null;
                  }
                },
                hintText: "이메일 주소",
                onChanged: (context) {
                  print(email.text);
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "비밀번호",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: mainText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextInput(
                controller: password,
                keyboardType: TextInputType.emailAddress,
                validator: (password) {
                  if (password!.isEmpty) {
                    return "비밀번호를 입력해주세요";
                  } else if (password.length < 8) {
                    return "비밀번호는 8자리 이상이여야 합니다";
                  } else {
                    return null;
                  }
                },
                obscureText: loginNotifier.obsecureText,
                hintText: "비밀번호 입력",
                onChanged: (context) {
                  print(password.text);
                },
                suffixIcon: GestureDetector(
                  onTap: () {
                    loginNotifier.obsecureText = !loginNotifier.obsecureText;
                  },
                  child: Icon(
                    loginNotifier.obsecureText
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                    size: 18,
                    color: mainDark,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: mainDark, borderRadius: BorderRadius.circular(10)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '로그인',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      );
    });
  }
}
