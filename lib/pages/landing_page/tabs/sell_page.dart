import 'package:flutter/material.dart';

class SellPage extends StatelessWidget {
  const SellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Category',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Sub-Category',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Make',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Model',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Year of Manufacturing',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Owner Serial Number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Fuel Type',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tax Permit',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Registration Number',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'State',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Price',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.maxFinite,
                height: 50,
                child: Center(
                  child: Text('Upload Pics'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.maxFinite,
                height: 50,
                child: Center(
                  child: Text('Sell'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
