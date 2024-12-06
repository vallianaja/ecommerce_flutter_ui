import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:ecommerce_skl_project/success/success_page.dart';
import 'package:flutter/material.dart';

part 'sections/item_cart.dart';

part 'sections/detail_address.dart';

part 'sections/payment_summary.dart';

part 'sections/checkout_button_section.dart';

part 'widgets/payment_item.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryBG,
      appBar: AppBar(
          backgroundColor: AppColor.primaryBG,
          title: const Text(
            'Checkout Details',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 30, right: 30),
              child: Text(
                'List Items',
                style: TextStyle(
                    color: AppColor.whiteText,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            itemCart(),
            SizedBox(
              height: 30,
            ),
            detailAddress(),
            SizedBox(
              height: 30,
            ),
            paymentSummary(),
            SizedBox(
              height: 30,
            ),
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
