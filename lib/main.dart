import 'package:ecommerce_skl_project/features/favorite/pages/index/page.dart';
import 'package:ecommerce_skl_project/features/home/pages/index/page.dart';
import 'package:ecommerce_skl_project/features/message/pages/index/page.dart';
import 'package:ecommerce_skl_project/features/profile/pages/index/page.dart';
import 'package:ecommerce_skl_project/features/splash/pages/index/splashScreen.dart';
import 'package:ecommerce_skl_project/features/cart/pages/index/page.dart';
import 'package:ecommerce_skl_project/features/cart/pages/checkout/page.dart';
import 'success/success_page.dart';

import 'preferences/preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedIndex = 0;
  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(icon, color: selectedIndex == index ? AppColor.primaryColor : AppColor.secondaryColor,),
    );
  }

  List<Widget> pages = const [
    HomePage(),
    MessagePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.topPrimaryBG,
      body: pages[selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
          },
          backgroundColor: AppColor.thirdColor,
          shape: const CircleBorder(),
          child: Image.asset(AppImage.cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            color: AppColor.secondaryBG,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildItemNav(CustomIcon.home, 0),
                buildItemNav(CustomIcon.message, 1),
                const SizedBox(width: 40,),
                buildItemNav(CustomIcon.favorite, 2),
                buildItemNav(CustomIcon.profile, 3),
              ],
            ),
          ),
        ));
  }
}
