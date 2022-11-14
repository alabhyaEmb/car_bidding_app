import 'package:flutter/material.dart';

import '../../../widgets/build_buy_page_card.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 10; i++) ...[
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                      child: const Icon(
                        Icons.abc,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Category')
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sort),
            label: const Text('Short by date'),
          ),
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              100,
              (index) {
                return const BuildBuyPageCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}
