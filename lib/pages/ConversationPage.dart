import 'package:devlly_chat_app/config/Palette.dart';
import 'package:devlly_chat_app/widgets/ChatAppBar.dart';
import 'package:devlly_chat_app/widgets/ChatListWidget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();

  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        color: Palette.chatBackgroundColor,
        child: ChatListWidget(),
      ), // Custom app bar for chat screen
      Container(
        color: Colors.transparent,
        height: (MediaQuery
            .of(context)
            .size
            .height / 12) * 1.7,
        child: ChatAppBar(),
      )
    ]);
  }
}
