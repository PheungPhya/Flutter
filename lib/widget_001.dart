import 'package:flutter/material.dart';

class Widget001 extends StatefulWidget {
  const Widget001({super.key});

  @override
  State<Widget001> createState() => _Widget001State();
}

class _Widget001State extends State<Widget001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Center(
                          child: Text('Flutter Dialog'),
                        ),
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Text('Close'),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.red),
                          ),
                        ],
                        content: const Text('Do you want to exit ?'),
                      ));
            },
            child: const Text('Show alert dialog')),
      ),
    );
  }
}
