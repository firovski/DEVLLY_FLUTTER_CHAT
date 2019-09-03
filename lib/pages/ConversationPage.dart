import 'package:devlly_chat_app/widgets/ChatAppBar.dart';
import 'package:devlly_chat_app/widgets/ChatListWidget.dart';
import 'package:devlly_chat_app/widgets/InputWidget.dart';
import 'package:flutter/material.dart';


class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();

  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: ChatAppBar(), // Custom app bar for chat screen
            body: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(),//Chat list
                  InputWidget() // The input widget
                ],
              ),
            ]
            )
        )
    );
  }


}