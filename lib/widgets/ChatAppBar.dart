import 'package:devlly_chat_app/clippers/WaveClipperTwo.dart';
import 'package:devlly_chat_app/config/Assets.dart';
import 'package:devlly_chat_app/config/Palette.dart';
import 'package:devlly_chat_app/config/Styles.dart';
import 'package:flutter/material.dart';
class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;

  const ChatAppBar();

  @override
  Widget build(BuildContext context) {
// Text style for everything else

    return Material(
        color: Colors.transparent,
        child: Container(
            decoration: new BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  //adds a shadow to the appbar
                  new BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 2.0,
                      spreadRadius: 0.1
                  ),

                ]),
            child: ClipPath(
              clipper: WaveClipperTwo(),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.redAccent,
                  child: Row(children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  //adds a shadow to the appbar
                                  new BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                      spreadRadius: 0.5
                                  ),

                                ],
                                color: Palette.chatBackgroundColor,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: Image
                                      .asset(
                                    Assets.user,
                                  )
                                      .image,
                                )))),
                    SizedBox(width: 5,),
                    Expanded(
                        flex: 6,
                        child: Container(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize
                                  .min,
                              children: <Widget>[
                                Text('Aditya Gurjar',
                                    style: Styles
                                        .textHeading),
                                Text('@adityagurjar',
                                    style: Styles.text)
                              ],
                            ))),
                    //This is the display picture
                    Expanded(
                      //we're dividing the appbar into 7 : 3 ratio. 7 is for content and 3 is for the display picture.
                        flex: 7,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            5, 5, 5, 30),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        //adds a shadow to the appbar
                                                        new BoxShadow(
                                                            color: Colors.grey,
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5
                                                        ),

                                                      ], color: Colors.white,
                                                      shape: BoxShape.circle
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(5.0),
                                                    child: Center(child: Icon(
                                                        Icons.photo)),
                                                  )),
                                            ),
                                            SizedBox(width: 10,),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12.0),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        //adds a shadow to the appbar
                                                        new BoxShadow(
                                                            color: Colors.grey,
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5
                                                        ),

                                                      ],
                                                      color: Colors.white,
                                                      shape: BoxShape.circle
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(5.0),
                                                    child: Center(child: Icon(
                                                        Icons.videocam)),
                                                  )),
                                            ),
                                            SizedBox(width: 10,),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        //adds a shadow to the appbar
                                                        new BoxShadow(
                                                            color: Colors.grey,
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5
                                                        ),

                                                      ],
                                                      color: Colors.white,
                                                      shape: BoxShape.circle
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(5.0),
                                                    child: Center(child: Icon(
                                                        Icons
                                                            .insert_drive_file)),
                                                  )),
                                            ),
                                          ],
                                        ))),
                              ],
                            ))),
                  ])),
            )));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
