part of '../page.dart';

class itemCart extends StatelessWidget {
  const itemCart({
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
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/shirt8.png',
                    width: 70,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REAL MADRID 24/25 AWAY JERSEY',
                        style: TextStyle(
                            color: AppColor.whiteText,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Rp. 1.200.000',
                          style: TextStyle(
                              color: AppColor.blueText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                const Text(
                  '1 Items',
                  style: TextStyle(
                      color: AppColor.silverText, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}