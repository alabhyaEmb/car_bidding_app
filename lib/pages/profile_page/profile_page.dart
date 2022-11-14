import 'package:flutter/material.dart';
import 'package:vehicle_rentel/constants/constants.dart';

import '../kyc_page/kyc_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.group,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: const Center(
                    child: Text('Profile Pic'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('100 Followers'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('100 Following'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text(
                  'My Posts',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.post_add, size: 40),
              ),
              const SizedBox(height: 10),
              const ListTile(
                title: Text(
                  'Saved Posts',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.bookmark_outline, size: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text(
                  'Liked Posts',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.favorite_border_outlined, size: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text(
                  'Commented Posts',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.message_outlined, size: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                title: Text(
                  'Payment Details',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(Icons.payment_outlined, size: 40),
              ),
              if (Constants.isDealer)
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Live Auction',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.message_outlined, size: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Add Auctions',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.add, size: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'My Winning',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.favorite_border_outlined, size: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Subscription Details',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.subscriptions_outlined, size: 40),
                    ),
                  ],
                ),
              const SizedBox(height: 10),
              if (!Constants.isDealer)
                ListTile(
                  title: const Text(
                    'Become a Dealer',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing:
                      const Icon(Icons.arrow_right_alt_outlined, size: 40),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KycPage(),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
