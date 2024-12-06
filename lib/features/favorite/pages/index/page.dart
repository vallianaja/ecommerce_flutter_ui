import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        emptyFavorite()
      ],
    );
  }

  Expanded emptyFavorite() {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/favoriteImage.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' You don\'t have dream shoes?',
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
              'Let\'s find your favorite shoes',
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
        backgroundColor: AppColor.primaryBG,
        title: const Text(
          'Favorite Shoes',
          style: TextStyle(
              color: AppColor.whiteText,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      );
  }
}
