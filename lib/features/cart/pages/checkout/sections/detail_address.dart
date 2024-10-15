part of '../page.dart';

class detailAddress extends StatelessWidget {
  const detailAddress({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Address Details',
              style: TextStyle(
                  color: AppColor.whiteText,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            color: AppColor.iconBG,
                            borderRadius: BorderRadius.circular(1000)
                        ),
                        child: const Icon(Icons.folder_copy, size: 26, color: AppColor.iconColor)
                    ),
                    const DottedLine(
                      direction: Axis.vertical,
                      lineLength: 40,
                      // Panjang garis putus-putus
                      lineThickness: 2,
                      dashLength: 5,
                      dashColor: Colors.grey,
                    ),
                    Container(
                        padding: const EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            color: AppColor.iconBG,
                            borderRadius: BorderRadius.circular(1000)
                        ),
                        child: const Icon(Icons.location_pin, size: 26, color: AppColor.iconColor)
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Store Location',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.silverText,
                            fontSize: 14)),
                    Text('Adidas Core',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.whiteText,
                            fontSize: 14)),
                    SizedBox(height: 50),
                    Text('Your Address',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.silverText,
                            fontSize: 14)),
                    Text('IDN Boarding School Jonggol',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.whiteText,
                            fontSize: 14)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}