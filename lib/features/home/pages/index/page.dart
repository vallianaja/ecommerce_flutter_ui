import 'package:ecommerce_skl_project/preferences/assets.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';

part 'sections/header_section.dart';
part 'sections/content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categoryData = [
    'All Shirt',
    'Men Football',
    'Women Football',
    'Kids Football',
    'Kids Running',
  ];

  List<Widget> content = [
    const AllShoes(),
    const RunningShoes(),
    const TrainingShoes(),
    const BasketballShoes(),
    const FootballShoes(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _HeaderSection(),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColor.primaryColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedIndex == index
                              ? Colors.transparent
                              : const Color(0xff302F37),
                        )),
                    child: Center(
                      child: Text(
                        categoryData[index],
                        style: TextStyle(
                          color: selectedIndex == index
                              ? AppColor.whiteText
                              : AppColor.greyText,
                          fontWeight: selectedIndex == index
                              ? FontWeight.w600
                              : FontWeight.normal,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: categoryData.length,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        content[selectedIndex]
      ],
    );
  }
}
