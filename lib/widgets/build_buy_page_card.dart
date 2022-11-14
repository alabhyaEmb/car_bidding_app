import 'package:flutter/material.dart';

import '../pages/buy_vehicle_page/buy_vehicle.dart';

class BuildBuyPageCard extends StatelessWidget {
  const BuildBuyPageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BuyVehiclePage(
                  carname: 'carname',
                ),
              ),
            ),
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
                  height: 200,
                  color: Colors.grey,
                  child: const FlutterLogo(
                    size: 120,
                  ),
                ),
              ],
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
          ),
        ],
      ),
    );
  }
}
