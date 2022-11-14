import 'package:flutter/material.dart';
import 'package:vehicle_rentel/pages/landing_page/landing.dart';

import '../signup_page/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Opt',
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(1024, 60),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('New to App ?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          );
                        },
                        child: const Text('Register'),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LandingPage(),
                        ),
                      );
                    },
                    child: const Text('Skip'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
