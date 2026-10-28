import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:montejo_alignment_activity3/main.dart';

void main() {
  testWidgets('All 22 examples render and use the requested alignments', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 2280);
    tester.view.devicePixelRatio = 2.75;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const MyApp());

    const mainValues = [
      MainAxisAlignment.center,
      MainAxisAlignment.spaceAround,
      MainAxisAlignment.spaceBetween,
      MainAxisAlignment.spaceEvenly,
      MainAxisAlignment.start,
      MainAxisAlignment.end,
    ];
    const crossValues = [
      CrossAxisAlignment.start,
      CrossAxisAlignment.end,
      CrossAxisAlignment.baseline,
      CrossAxisAlignment.center,
      CrossAxisAlignment.stretch,
    ];

    for (int i = 0; i < 22; i++) {
      expect(find.text('Montejo Activity 5'), findsOneWidget);
      expect(find.text('${i + 1} / 22'), findsOneWidget);
      expect(tester.takeException(), isNull, reason: 'Example ${i + 1}');
      final red = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.red,
      );
      final yellow = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.yellow,
      );
      final blue = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.blue,
      );
      expect(red, findsOneWidget);
      expect(yellow, findsOneWidget);
      expect(blue, findsOneWidget);
      final flexFinder = find
          .ancestor(of: red, matching: find.byWidgetPredicate((w) => w is Flex))
          .first;
      final flex = tester.widget<Flex>(flexFinder);
      final row = i < 11;
      final index = i % 11;
      expect(flex.direction, row ? Axis.horizontal : Axis.vertical);
      if (index < 6) {
        expect(flex.mainAxisAlignment, mainValues[index]);
      } else {
        expect(flex.crossAxisAlignment, crossValues[index - 6]);
      }
      // Check the visible cross-axis positions, including real text baselines.
      if (index >= 6) {
        final boxes = [
          red,
          yellow,
          blue,
        ].map((f) => tester.renderObject<RenderBox>(f)).toList();
        double crossPosition(RenderBox box, CrossAxisAlignment alignment) {
          final origin = box.localToGlobal(Offset.zero);
          if (alignment == CrossAxisAlignment.baseline && row) {
            return origin.dy +
                box.getDryBaseline(box.constraints, TextBaseline.alphabetic)!;
          }
          final start = row ? origin.dy : origin.dx;
          final size = row ? box.size.height : box.size.width;
          return start +
              (alignment == CrossAxisAlignment.end
                  ? size
                  : alignment == CrossAxisAlignment.center
                  ? size / 2
                  : 0);
        }

        final alignment = crossValues[index - 6];
        final positions = boxes
            .map((box) => crossPosition(box, alignment))
            .toList();
        expect(positions[1], closeTo(positions[0], 0.01));
        expect(positions[2], closeTo(positions[0], 0.01));
        if (alignment == CrossAxisAlignment.stretch) {
          final sizes = boxes
              .map((box) => row ? box.size.height : box.size.width)
              .toList();
          expect(sizes[1], sizes[0]);
          expect(sizes[2], sizes[0]);
        }
      }
      if (i < 21) {
        await tester.tap(find.text('Next'));
        await tester.pumpAndSettle();
      }
    }
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, 'Next'))
          .onPressed,
      isNull,
    );
    await tester.tap(find.text('Previous'));
    await tester.pumpAndSettle();
    expect(find.text('21 / 22'), findsOneWidget);
  });
}
