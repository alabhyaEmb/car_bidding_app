import 'package:flutter/material.dart';

import '../../widgets/build_buy_page_card.dart';

class OtherProfilePage extends StatelessWidget {
  const OtherProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Username',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: const Center(
                      child: Text('Profile Pic'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Name')
                ],
              ),
              Column(
                children: const [
                  Text(
                    '100',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Followers',
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    '100',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Following',
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          for (int i = 0; i <= 10; i++) ...[
            const BuildBuyPageCard(),
          ]
        ],
      ),
    );
  }
}
