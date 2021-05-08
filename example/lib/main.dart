import 'package:flutter/material.dart';
import 'package:flutter_haptic/haptic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Haptic Plugin Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _horizontallyStretchedButton(context, 'on Success', () {
                Haptic.onSuccess();
              }),
              _horizontallyStretchedButton(context, 'on Failure', () {
                Haptic.onFailure();
              }),
              _horizontallyStretchedButton(context, 'on Selection', () {
                Haptic.onSelection();
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _horizontallyStretchedButton(BuildContext context, String title, VoidCallback onPressed) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 44,
            child: MaterialButton(
              color: Theme.of(context).primaryColor,
              onPressed: onPressed,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
