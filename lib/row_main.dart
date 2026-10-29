import 'package:flutter/material.dart';

class RowMainCenter extends StatelessWidget {
  const RowMainCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.center',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainSpaceAround extends StatelessWidget {
  const RowMainSpaceAround({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.spaceAround',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainSpaceBetween extends StatelessWidget {
  const RowMainSpaceBetween({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.spaceBetween',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainSpaceEvenly extends StatelessWidget {
  const RowMainSpaceEvenly({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.spaceEvenly',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainStart extends StatelessWidget {
  const RowMainStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.start',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowMainEnd extends StatelessWidget {
  const RowMainEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'MainAxisAlignment.end',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 70, height: 70, color: Colors.red),
                Container(width: 70, height: 70, color: Colors.yellow),
                Container(width: 70, height: 70, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
