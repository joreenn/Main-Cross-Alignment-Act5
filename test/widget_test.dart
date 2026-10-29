import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:montejo_alignment_activity3/main.dart';

void main() {
  testWidgets('Eight PDF examples have the correct title and positions', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 2280);
    tester.view.devicePixelRatio = 2.75;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const MyApp());
    const labels = [
      'MainAxisAlignment.center',
      'MainAxisAlignment.spaceAround',
      'MainAxisAlignment.spaceBetween',
      'MainAxisAlignment.spaceEvenly',
      'MainAxisAlignment.start',
      'MainAxisAlignment.end',
      'CrossAxisAlignment.start',
      'CrossAxisAlignment.center',
    ];
    for (int i = 0; i < labels.length; i++) {
      expect(find.text('montejo activity 5'), findsOneWidget);
      expect(find.text('${i + 1} / 8'), findsOneWidget);
      expect(find.text(labels[i]), findsOneWidget);
      expect(tester.takeException(), isNull);
      final red = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.red,
      );
      final yellow = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.yellow,
      );
      final blue = find.byWidgetPredicate(
        (w) => w is Container && w.color == Colors.blue,
      );
      final rects = [red, yellow, blue].map(tester.getRect).toList();
      for (final rect in rects) {
        expect(rect.width, closeTo(70, .01));
        expect(rect.height, closeTo(70, .01));
      }
      if (i < 6) {
        final row = find.ancestor(of: red, matching: find.byType(Row)).first;
        final bounds = tester.getRect(row);
        final free = bounds.width - 210;
        final expectedStart = [free / 2, free / 6, 0.0, free / 4, 0.0, free][i];
        final expectedGap = [0.0, free / 3, free / 2, free / 4, 0.0, 0.0][i];
        expect(rects[0].left - bounds.left, closeTo(expectedStart, .01));
        expect(rects[1].left - rects[0].right, closeTo(expectedGap, .01));
        expect(rects[2].left - rects[1].right, closeTo(expectedGap, .01));
      } else {
        expect(rects[1].top, closeTo(rects[0].bottom, .01));
        expect(rects[2].top, closeTo(rects[1].bottom, .01));
        expect(rects[1].left, closeTo(rects[0].left, .01));
        expect(rects[2].left, closeTo(rects[0].left, .01));
        final label = tester.getRect(find.text(labels[i]));
        if (i == 6) {
          expect(label.left, closeTo(0, .01));
        } else {
          expect(rects[0].center.dx, closeTo(1080 / 2.75 / 2, .01));
        }
      }
      if (i < 7) {
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
    expect(find.text('7 / 8'), findsOneWidget);
  });
}
