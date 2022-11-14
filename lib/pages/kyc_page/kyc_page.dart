import 'package:flutter/material.dart';

class KycPage extends StatefulWidget {
  const KycPage({super.key});

  @override
  State<KycPage> createState() => _KycPageState();
}

class _KycPageState extends State<KycPage> {
  late ValueNotifier<bool> subsVisible;
  @override
  void initState() {
    super.initState();
    subsVisible = ValueNotifier<bool>(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Kyc Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: const Text('Select Subscription'),
                subtitle: const Text('Subs Type'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: (() {
                    subsVisible.value = !subsVisible.value;
                  }),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: subsVisible,
              builder: (context, child) {
                return subsVisible.value
                    ? Card(
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text('3 Months'),
                              subtitle: Text('\$300'),
                            ),
                            Divider(thickness: 1),
                            ListTile(
                              title: Text('6 Months'),
                              subtitle: Text('\$300'),
                            ),
                            Divider(thickness: 1),
                            ListTile(
                              title: Text('9 Months'),
                              subtitle: Text('\$300'),
                            ),
                            Divider(thickness: 1),
                            ListTile(
                              title: Text('1 Year'),
                              subtitle: Text('\$3000'),
                            ),
                          ],
                        ),
                      )
                    : Container();
              },
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Aadhar Card Number',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pan Card Number',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(1024, 60),
                  ),
                  child: const Text(
                    'Upload Aadhar Card',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(1024, 60),
                  ),
                  child: const Text(
                    'Upload Pan Card',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                minimumSize: const Size(1024, 60),
              ),
              child: const Text(
                'Payment',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
