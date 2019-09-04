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
    return Column(children: <Widget>[
      Expanded(flex: 2, child: ChatAppBar()), // Custom app bar for chat screen
      Expanded(
          flex: 11,
          child: Container(
            color: Palette.chatBackgroundColor,
            child: ChatListWidget(),
          ))
    ]);
  }
}