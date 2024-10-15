part of '../page.dart';

class checkoutButton extends StatelessWidget {
  const checkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: TextStyle(fontSize: 15, color: AppColor.whiteText),),
              Text('Rp. 1.200.000', style: TextStyle(fontSize: 17, color: AppColor.blueText, fontWeight: FontWeight.w700),)
            ],
          ),
        ),

        const Divider(color: Color(0xff2B2938),),

        Padding(
          padding: const EdgeInsets.all(30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckoutPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Continue to Checkout',
                    style: TextStyle(
                        color: AppColor.whiteText,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_forward, color: AppColor.whiteText, size: 25,)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}