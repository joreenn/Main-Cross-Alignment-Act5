import 'package:flutter/material.dart';

class ColumnCrossStart extends StatelessWidget {
  const ColumnCrossStart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'CrossAxisAlignment.start',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(width: 70, height: 70, color: Colors.red),
              Container(width: 70, height: 70, color: Colors.yellow),
              Container(width: 70, height: 70, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}

class ColumnCrossCenter extends StatelessWidget {
  const ColumnCrossCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'CrossAxisAlignment.center',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(width: 70, height: 70, color: Colors.red),
              Container(width: 70, height: 70, color: Colors.yellow),
              Container(width: 70, height: 70, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
