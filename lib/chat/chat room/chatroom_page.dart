// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/chat/chatlist/chatlistmodelpage.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'chatroompagewidet.dart';
import 'conversionwidget.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({
    Key? key,
  }) : super(key: key);

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  // late FirebaseMessaging messaging;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
  //     Future.delayed(Duration(seconds: 1));

  //     Provider.of<Chatlistmodelpage>(context, listen: false).conversionlist();
  //   });

  //   messaging = FirebaseMessaging.instance;
  //   messaging.getToken().then((value) {
  //     print('Token.....   $value');
  //   });

  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       Future.delayed(Duration(milliseconds: 200));
  //       final model = Provider.of<Chatlistmodelpage>(context, listen: false);
  //       await model.conversionlist();
  //       await model.conversionlist();
  //       model.scrollController.jumpTo(model.scrollController.position.maxScrollExtent);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, 'Jon Deo'),
          body: Consumer<Chatlistmodelpage>(builder: (context, model, _) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: deviceWidth(context, 1.0),
              height: deviceheight(context, 1.0),
              child: Column(
                children: [
                  
                  // appbarChatScreen(
                  //   context,
                  //   model.reseverName!.toUpperCase(),
                  // ),
                  model.isShimmer ? LinearProgressIndicator() : Container(),
        
                  //  model.isShimmer ?shimmer():  ChatRoomConversionWidget(),
                  ChatRoomConversionWidget(),
                  chatimgTypingwidgetBottm(context, model),
                ],
              ),
            );
          }),
        ),
 bgplaceholder()
      ],
    );
  }
}
