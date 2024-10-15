import 'package:ecommerce_skl_project/main.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryBG,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 170.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColor.topPrimaryBG,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/lottie/success.json'),
                const Text(
                  'Thank You For Buying',
                  style: TextStyle(
                    color: AppColor.whiteText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
                const Text(
                  'Our Product!',
                  style: TextStyle(
                      color: AppColor.whiteText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 17),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Back To Home',
                      style: TextStyle(
                          color: AppColor.whiteText,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
