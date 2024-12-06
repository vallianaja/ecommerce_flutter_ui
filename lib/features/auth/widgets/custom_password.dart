import 'package:flutter/material.dart';

import '../../../preferences/preferences.dart';

class CustomPassword extends StatefulWidget {
  const CustomPassword({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<CustomPassword> createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {

  bool _passwordVisible = false; // Variabel untuk mengontrol visibilitas password

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(color: AppColor.whiteText, fontSize: 16),
        ),
        const SizedBox(
          height: 14,
        ),
        TextField(
          style: const TextStyle(color: AppColor.whiteText, fontSize: 16),
          obscureText: !_passwordVisible, // Kontrol visibilitas password
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible; // Toggle visibility
                  });
                },
                child: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
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
              )
          ),
        ),
      ],
    );
  }
}
