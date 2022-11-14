import 'package:flutter/material.dart';

import '../../widgets/build_buy_page_card.dart';

class AuctionPage extends StatelessWidget {
  const AuctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Auctions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: List.generate(
          100,
          (index) {
            return const BuildBuyPageCard();
          },
        ),
      ),
    );
  }
}
