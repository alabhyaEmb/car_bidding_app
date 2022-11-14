import 'package:flutter/material.dart';
import 'package:vehicle_rentel/constants/constants.dart';
import 'package:vehicle_rentel/pages/auction_page/auction_page.dart';
import 'package:vehicle_rentel/pages/other_profile_page/other_profile_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (Constants.isDealer)
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuctionPage(),
                ),
              ),
              tileColor: Colors.blue,
              title: const Text('View Live Auctions'),
              trailing: const IconButton(
                onPressed: null,
                icon: Icon(Icons.arrow_right_outlined),
              ),
            ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey,
                  ),
                  child: const FlutterLogo(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add Post',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          for (int i = 0; i < 10; i++) ...[
            Card(
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  ListTile(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtherProfilePage(),
                      ),
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey,
                      ),
                      child: const FlutterLogo(),
                    ),
                    title: const Text('Seller Name'),
                    subtitle: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.maxFinite,
                    color: Colors.black12,
                    child: const FlutterLogo(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10),
                            Text('100'),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('Comments'),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('Share'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comment',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}
