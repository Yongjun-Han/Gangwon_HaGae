import 'package:flutter/material.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/controllers/resgistration_provider.dart';
import 'package:gangwondog/screens/home_screen.dart';
import 'package:gangwondog/widgets/custom_text_input.dart';
import 'package:provider/provider.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterNotifier>(
        builder: (context, registerNotifier, child) {
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "회원가입",
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
                "닉네임",
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
                controller: name,
                keyboardType: TextInputType.emailAddress,
                validator: (name) {
                  if (name!.isEmpty) {
                    return "닉네임을 입력해주세요";
                  } else {
                    return null;
                  }
                },
                hintText: "닉네임을 정해주세요",
                onChanged: (context) {
                  print(email.text);
                },
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
                  if (registerNotifier.passwordValidator(password ?? "")) {
                    return "비밀번호는 특수문자, 대소문자, 숫자 포함 8자 이상 15자 이내로 입력해주세요.";
                  }
                  return null;
                },
                obscureText: registerNotifier.obsecureText,
                hintText: "비밀번호 입력",
                onChanged: (context) {
                  print(password.text);
                },
                suffixIcon: GestureDetector(
                  onTap: () {
                    registerNotifier.obsecureText =
                        !registerNotifier.obsecureText;
                  },
                  child: Icon(
                    registerNotifier.obsecureText
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
                        '회원가입 완료',
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
