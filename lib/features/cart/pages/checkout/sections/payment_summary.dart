part of '../page.dart';


class paymentSummary extends StatelessWidget {
  const paymentSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.cardBG,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style: TextStyle(
                  color: AppColor.whiteText,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            SizedBox(
              height: 13,
            ),
            itemPayment(title: 'Product Quantity', item: '1 Items',),
            SizedBox(height: 13,),
            itemPayment(title: 'Product Price', item: 'Rp. 1.200.000',),
            SizedBox(height: 13,),
            itemPayment(title: 'Shipping', item: 'Rp. 500.000',),
            SizedBox(height: 10,),
            Divider(color: Color(0xff2E3141),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      color: AppColor.blueText,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                Text(
                  'Rp. 1.700.000',
                  style: TextStyle(
                      color: AppColor.blueText,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
