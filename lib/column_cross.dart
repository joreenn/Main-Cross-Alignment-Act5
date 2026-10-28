import 'package:flutter/material.dart';

// Based on the Row and Column examples in CCE106_LoginRegister.pptx.

class ColumnCrossStart extends StatelessWidget {
  const ColumnCrossStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.start',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 90, height: 90, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnCrossEnd extends StatelessWidget {
  const ColumnCrossEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.end',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 90, height: 90, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnCrossBaseline extends StatelessWidget {
  const ColumnCrossBaseline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.baseline',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.red,
                  child: const Text('Hello', style: TextStyle(fontSize: 32)),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                  child: const Text('Hello', style: TextStyle(fontSize: 24)),
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.blue,
                  child: const Text('Hello', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('In a Column, baseline behaves like start.'),
        ],
      ),
    );
  }
}

class ColumnCrossCenter extends StatelessWidget {
  const ColumnCrossCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.center',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 90, height: 90, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnCrossStretch extends StatelessWidget {
  const ColumnCrossStretch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.stretch',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 90, height: 90, color: Colors.red),
                Container(width: 80, height: 80, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
