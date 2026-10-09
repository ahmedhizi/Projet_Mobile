import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jarya/app.dart';

void main() {
  testWidgets('shows the six navigation destinations', (tester) async {
    await tester.pumpWidget(const JaryaApp());
    await tester.pumpAndSettle();

    expect(find.byType(NavigationDestination), findsNWidgets(6));
    expect(find.text('jarya.tn'), findsOneWidget);
  });
}
