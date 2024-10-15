part of '../page.dart';

class itemPayment extends StatelessWidget {
  const itemPayment({
    super.key,
    required this.title,
    required this.item
  });

  final String title;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColor.silverText,
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
        Text(
          item,
          style: const TextStyle(
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600,
              fontSize: 15),
        )
      ],
    );
  }
}