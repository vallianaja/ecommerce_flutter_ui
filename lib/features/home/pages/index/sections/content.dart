part of '../page.dart';



class AllShoes extends StatelessWidget {
  const AllShoes({super.key});

  final List<Product> products = const [
    Product(
        imageUrl: "assets/images/shirt1.png",
        category: 'Men Football',
        title: 'REAL MADRID ORIGINAL T-SHIRT',
        price: 'Rp. 650.000'
    ),

    Product(
        imageUrl: "assets/images/shirt2.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY',
        price: 'Rp. 2.000.000'
    ),

    Product(
        imageUrl: "assets/images/shirt3.png",
        category: 'Men Football',
        title: 'REAL MADRID LFSTLR JERSEY',
        price: 'Rp. 1.300.000'
    ),
  ];

  final List<Product> productArrival = const [
    Product(
        imageUrl: "assets/images/shirt4.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 AWAY JERSEY',
        price: 'Rp. 1.200.000'
    ),

    Product(
        imageUrl: "assets/images/shirt5.png",
        category: 'Kids Running',
        title: 'REAL MADRID ANTHEM JACKET KIDS',
        price: 'Rp. 1.300.000'
    ),

    Product(
        imageUrl: "assets/images/shirt6.png",
        category: 'Kids Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY KIDS',
        price: 'Rp. 950.000'
    ),

    Product(
        imageUrl: "assets/images/shirt7.png",
        category: 'Men Football',
        title: 'REAL MADRID ANTHEM JACKET',
        price: 'Rp. 1.500.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Product',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 18,),
          SizedBox(
            height: 278,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Container(
                  width: 215,
                  decoration: BoxDecoration(
                      color: const Color(0xffF1F0F2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(product.imageUrl),
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.blackText,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 30.0,);
              },
              itemCount: products.length,
            ),
          ),
          const SizedBox(height: 30.0,),
          const Text(
            'New Arrivals',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 14.0,),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = productArrival[index];
                return Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F0F2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(product.imageUrl)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.whiteText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: productArrival.length,
            ),
          )
        ],
      ),
    );
  }
}

class RunningShoes extends StatelessWidget {
  const RunningShoes({super.key});

  final List<Product> productArrival = const [
    Product(
        imageUrl: "assets/images/shirt4.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 AWAY JERSEY',
        price: 'Rp. 1.200.000'
    ),

    Product(
        imageUrl: "assets/images/shirt5.png",
        category: 'Kids Running',
        title: 'REAL MADRID ANTHEM JACKET KIDS',
        price: 'Rp. 1.300.000'
    ),

    Product(
        imageUrl: "assets/images/shirt6.png",
        category: 'Kids Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY KIDS',
        price: 'Rp. 950.000'
    ),

    Product(
        imageUrl: "assets/images/shirt7.png",
        category: 'Men Football',
        title: 'REAL MADRID ANTHEM JACKET',
        price: 'Rp. 1.500.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Arrivals',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 14.0,),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = productArrival[index];
                return Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F0F2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(product.imageUrl)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.whiteText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: productArrival.length,
            ),
          )
        ],
      ),
    );
  }
}

class TrainingShoes extends StatelessWidget {
  const TrainingShoes({super.key});

  final List<Product> productArrival = const [
    Product(
        imageUrl: "assets/images/shirt4.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 AWAY JERSEY',
        price: 'Rp. 1.200.000'
    ),

    Product(
        imageUrl: "assets/images/shirt5.png",
        category: 'Kids Running',
        title: 'REAL MADRID ANTHEM JACKET KIDS',
        price: 'Rp. 1.300.000'
    ),

    Product(
        imageUrl: "assets/images/shirt6.png",
        category: 'Kids Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY KIDS',
        price: 'Rp. 950.000'
    ),

    Product(
        imageUrl: "assets/images/shirt7.png",
        category: 'Men Football',
        title: 'REAL MADRID ANTHEM JACKET',
        price: 'Rp. 1.500.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Arrivals',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 14.0,),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = productArrival[index];
                return Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F0F2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(product.imageUrl)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.whiteText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: productArrival.length,
            ),
          )
        ],
      ),
    );
  }
}

class BasketballShoes extends StatelessWidget {
  const BasketballShoes({super.key});

  final List<Product> productArrival = const [
    Product(
        imageUrl: "assets/images/shirt4.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 AWAY JERSEY',
        price: 'Rp. 1.200.000'
    ),

    Product(
        imageUrl: "assets/images/shirt5.png",
        category: 'Kids Running',
        title: 'REAL MADRID ANTHEM JACKET KIDS',
        price: 'Rp. 1.300.000'
    ),

    Product(
        imageUrl: "assets/images/shirt6.png",
        category: 'Kids Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY KIDS',
        price: 'Rp. 950.000'
    ),

    Product(
        imageUrl: "assets/images/shirt7.png",
        category: 'Men Football',
        title: 'REAL MADRID ANTHEM JACKET',
        price: 'Rp. 1.500.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Arrivals',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 14.0,),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = productArrival[index];
                return Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F0F2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(product.imageUrl)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.whiteText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: productArrival.length,
            ),
          )
        ],
      ),
    );
  }
}

class FootballShoes extends StatelessWidget {
  const FootballShoes({super.key});

  final List<Product> productArrival = const [
    Product(
        imageUrl: "assets/images/shirt4.png",
        category: 'Men Football',
        title: 'REAL MADRID 24/25 AWAY JERSEY',
        price: 'Rp. 1.200.000'
    ),

    Product(
        imageUrl: "assets/images/shirt5.png",
        category: 'Kids Running',
        title: 'REAL MADRID ANTHEM JACKET KIDS',
        price: 'Rp. 1.300.000'
    ),

    Product(
        imageUrl: "assets/images/shirt6.png",
        category: 'Kids Football',
        title: 'REAL MADRID 24/25 THIRD JERSEY KIDS',
        price: 'Rp. 950.000'
    ),

    Product(
        imageUrl: "assets/images/shirt7.png",
        category: 'Men Football',
        title: 'REAL MADRID ANTHEM JACKET',
        price: 'Rp. 1.500.000'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Arrivals',
            style: TextStyle(
                color: AppColor.whiteText,
                fontWeight: FontWeight.w600,
                fontSize: 22),
          ),
          const SizedBox(height: 14.0,),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final product = productArrival[index];
                return Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F0F2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(product.imageUrl)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.category,
                              style: const TextStyle(
                                color: AppColor.silverText,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                color: AppColor.whiteText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                color: AppColor.blueText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: productArrival.length,
            ),
          )
        ],
      ),
    );
  }
}
