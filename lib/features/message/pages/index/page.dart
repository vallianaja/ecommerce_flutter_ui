import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        emptyMessage()
      ],
    );
  }

  Expanded emptyMessage() {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/headsetImage.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Oops no message yet?',
              style: TextStyle(
                color: AppColor.whiteText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'You have never done a transaction',
              style: TextStyle(
                color: AppColor.silverText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.primaryColor),
              child: const Text(
                'Explore Store',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
          ],
        ),
      );
  }

  AppBar header() {
    return AppBar(
        backgroundColor: AppColor.topPrimaryBG,
        title: const Text(
          'Message Support',
          style: TextStyle(
              color: AppColor.whiteText,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      );
  }
}
