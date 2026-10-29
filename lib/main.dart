import 'package:flutter/material.dart';

import 'row_main.dart';
import 'column_cross.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'montejo activity 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AlignmentPage(),
    );
  }
}

class AlignmentPage extends StatefulWidget {
  const AlignmentPage({super.key});

  @override
  State<AlignmentPage> createState() => _AlignmentPageState();
}

class _AlignmentPageState extends State<AlignmentPage> {
  int currentExample = 0;

  final List<Widget> examples = const [
    RowMainCenter(),
    RowMainSpaceAround(),
    RowMainSpaceBetween(),
    RowMainSpaceEvenly(),
    RowMainStart(),
    RowMainEnd(),
    ColumnCrossStart(),
    ColumnCrossCenter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('montejo activity 5'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(child: examples[currentExample]),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: currentExample > 0
                  ? () {
                      setState(() {
                        currentExample--;
                      });
                    }
                  : null,
              child: const Text('Previous'),
            ),
            Text('${currentExample + 1} / ${examples.length}'),
            TextButton(
              onPressed: currentExample < examples.length - 1
                  ? () {
                      setState(() {
                        currentExample++;
                      });
                    }
                  : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
