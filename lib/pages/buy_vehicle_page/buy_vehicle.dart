import 'package:flutter/material.dart';

class BuyVehiclePage extends StatelessWidget {
  final String carname;
  const BuyVehiclePage({super.key, required this.carname});

  @override
  Widget build(BuildContext context) {
    TextEditingController bidController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.bookmark_outline),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.share),
          )
        ],
        title: Text(
          carname,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(1024, 60),
                ),
                child: const Text(
                  'Call Seller',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: ElevatedButton(
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Enter Your Bid '),
                        content: SingleChildScrollView(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: bidController,
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: const Text('Bid'),
                            onPressed: () {
                              Navigator.pop(context, bidController.text);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(1024, 60),
                ),
                child: const Text(
                  'Make an offer',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.maxFinite,
              height: 300,
              child: FlutterLogo(
                size: 120,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Highest Bid: \$1000000',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Price: \$1000000',
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
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Car Model: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Model',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Seller name: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'name',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Seller Location: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'City Name',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Car Description',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: double.maxFinite,
              child: Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? ",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
