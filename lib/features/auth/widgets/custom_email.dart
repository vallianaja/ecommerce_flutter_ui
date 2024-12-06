import 'package:flutter/material.dart';

import '../../../preferences/preferences.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscure;
  final Widget? suffix;

  const CustomField({
    super.key,
    required this.title, required this.controller, required this.obscure, this.suffix,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColor.whiteText, fontSize: 16),
        ),
        const SizedBox(
          height: 14,
        ),
        TextField(
          style: const TextStyle(color: AppColor.whiteText, fontSize: 16),
          obscureText: obscure ?? false,

          decoration: InputDecoration(
            suffix: suffix,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: AppColor.greyText,
                  )),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: const BorderSide(
                  color: AppColor.whiteText,
                ),
              )),
        ),
      ],
    );
  }
}
