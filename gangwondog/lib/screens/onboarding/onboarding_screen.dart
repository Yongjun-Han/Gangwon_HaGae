import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gangwondog/constants/color/colors.dart';
import 'package:gangwondog/screens/sign_in_up/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 72,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const HomeScreen(),
              //           ),
              //         );

              //         showModalBottomSheet(
              //           context: context,
              //           builder: (BuildContext context) {
              //             return Container(
              //               height: 360,
              //               decoration: const BoxDecoration(
              //                 color: Colors.white,
              //               ),
              //               child: Column(
              //                 children: [
              //                   Container(
              //                     height: 32,
              //                     decoration: const BoxDecoration(
              //                       color: Colors.black,
              //                     ),
              //                     child: const Row(
              //                       mainAxisAlignment: MainAxisAlignment.end,
              //                       children: [
              //                         Icon(
              //                           Icons.check_box_outline_blank_outlined,
              //                           color: Colors.white54,
              //                         ),
              //                         SizedBox(
              //                           width: 8,
              //                         ),
              //                         Text(
              //                           '오늘하루 그만보기',
              //                           style: TextStyle(
              //                             fontWeight: FontWeight.bold,
              //                             color: Colors.white54,
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           width: 20,
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   Expanded(
              //                     child: Container(
              //                       decoration: const BoxDecoration(
              //                         color: Colors.white,
              //                       ),
              //                       child: Image.asset(
              //                         'lib/assets/event/kanu_dog.jpg',
              //                         fit: BoxFit.fill,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             );
              //           },
              //         );
              //       },
              //       child: const Text(
              //         '먼저 둘러볼게요',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w500,
              //             color: Color(0xffa0a0a0)),
              //       ),
              //     )
              //   ],
              // ),
              const SizedBox(
                height: 72,
              ),
              const SizedBox(
                width: 266,
                height: 266,
                child: Image(image: AssetImage('lib/assets/logo/location.gif')),
              ),
              const SizedBox(
                height: 72,
              ),
              const SizedBox(
                child: Text(
                  '강원도 곳곳에서,\n댕댕이와 추억 만들기',
                  style: TextStyle(
                      color: mainText,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "강원가개에서는 강원도의 반려동물 동반 출입이 가능한 곳을 볼 수 있어요. 가족이나 다름없는 반려견에게 다양한 추억을 만들어 주세요",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            color: mainDark,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '강원가개 시작하기',
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
                    const SizedBox(
                      height: 16,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     const Text(
                    //       '이미계정이 있으신가요? ',
                    //       style: TextStyle(
                    //         fontSize: 12,
                    //         fontWeight: FontWeight.w700,
                    //         color: mainTextDimmed,
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             fullscreenDialog: true,
                    //             builder: (context) => const Login(),
                    //           ),
                    //         );
                    //       },
                    //       child: const Text(
                    //         '로그인하기',
                    //         style: TextStyle(
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.w700,
                    //           color: mainLight,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
