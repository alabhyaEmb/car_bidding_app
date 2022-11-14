import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../profile_page/profile_page.dart';
import 'tabs/buy_page.dart';
import 'tabs/home_page.dart';
import 'tabs/sell_page.dart';
import 'tabs/video_listing_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  List<Widget> indexScreens = [
    const HomePage(),
    const BuyPage(),
    const SellPage(),
    const VideoListingPage()
  ];
  List<String> indexTitle = ['Home', 'Buy', 'Sell', 'Video Listing'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          indexTitle[currentIndex],
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.group,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home_outlined,
              size: 30,
            ),
            title: const Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.shop,
              size: 30,
            ),
            title: const Text('Buy'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.sell_outlined,
              size: 30,
            ),
            title: const Text('Sell'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.movie,
              size: 30,
            ),
            title: const Text('Listing'),
          ),
        ],
      ),
      body: indexScreens[currentIndex],
    );
  }
}
