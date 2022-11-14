import 'package:flutter/material.dart';

class VideoListingPage extends StatelessWidget {
  const VideoListingPage({super.key});

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sort),
              label: const Text('Short by date'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sell),
              label: const Text('Sell Via Video'),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              100,
              (index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Car Name',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 400,
                        color: Colors.grey,
                        child: const Icon(
                          Icons.movie,
                          size: 120,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '\$1000000',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '\$1200000',
                                  style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Car Details',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Seller name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.call_outlined),
                                  label: const Text('Call Seller'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_outline),
                                  label: const Text('Save Post'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share),
                                  label: const Text('Share'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
