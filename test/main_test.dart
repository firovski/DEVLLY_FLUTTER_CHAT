// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:devlly_chat_app/main.dart';
import 'package:devlly_chat_app/pages/ConversationPageSlide.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Devlly());
    expect(find.byType(ConversationPageSlide), findsOneWidget);

  });
}
