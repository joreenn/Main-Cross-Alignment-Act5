import 'package:flutter/material.dart';

// Based on the Row and Column examples in CCE106_LoginRegister.pptx.

class ColumnMainCenter extends StatelessWidget {
  const ColumnMainCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.center',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
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

class ColumnMainSpaceAround extends StatelessWidget {
  const ColumnMainSpaceAround({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.spaceAround',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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

class ColumnMainSpaceBetween extends StatelessWidget {
  const ColumnMainSpaceBetween({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.spaceBetween',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

class ColumnMainSpaceEvenly extends StatelessWidget {
  const ColumnMainSpaceEvenly({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.spaceEvenly',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

class ColumnMainStart extends StatelessWidget {
  const ColumnMainStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.start',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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

class ColumnMainEnd extends StatelessWidget {
  const ColumnMainEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Column', style: TextStyle(fontSize: 18)),
          const Text(
            'MainAxisAlignment.end',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
