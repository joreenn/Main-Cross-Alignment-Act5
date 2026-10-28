import 'package:flutter/material.dart';

// Based on the Row and Column examples in CCE106_LoginRegister.pptx.

class RowCrossStart extends StatelessWidget {
  const RowCrossStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Row', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.start',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Row(
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

class RowCrossEnd extends StatelessWidget {
  const RowCrossEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Row', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.end',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Row(
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

class RowCrossBaseline extends StatelessWidget {
  const RowCrossBaseline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Row', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.baseline',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Row(
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
        ],
      ),
    );
  }
}

class RowCrossCenter extends StatelessWidget {
  const RowCrossCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Row', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.center',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Row(
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

class RowCrossStretch extends StatelessWidget {
  const RowCrossStretch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Row', style: TextStyle(fontSize: 18)),
          const Text(
            'CrossAxisAlignment.stretch',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Row(
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
