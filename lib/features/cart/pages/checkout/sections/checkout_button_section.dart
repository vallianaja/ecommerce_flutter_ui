part of '../page.dart';

class checkoutButton extends StatelessWidget {
  const checkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: Color(0xff2B2938),),

        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const SuccessPage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 117, vertical: 17),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Checkout Now',
                style: TextStyle(
                    color: AppColor.whiteText,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ],
    );
  }
}