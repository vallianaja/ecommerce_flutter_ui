import 'package:ecommerce_skl_project/features/cart/pages/checkout/page.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'sections/item_cart_section.dart';

part 'sections/checkout_button_section.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryBG,
      appBar: AppBar(
          backgroundColor: AppColor.primaryBG,
          title: const Text(
            'Your Cart',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: AppColor.whiteText),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteText,
            ),
          )),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [itemCart(), checkoutButton()],
        ),
      ),
    );
  }
}
