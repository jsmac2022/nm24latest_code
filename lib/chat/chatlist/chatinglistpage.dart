
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/shimmereffect.dart';
import 'package:provider/provider.dart';
import 'chatinglistwidgetpage.dart';
import 'chatlistmodelpage.dart';

class ChatingListPage extends StatefulWidget {
  ChatingListPage({Key? key}) : super(key: key);

  @override
  State<ChatingListPage> createState() => _ChatingListPageState();
}

class _ChatingListPageState extends State<ChatingListPage> {
  final formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();
    // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
    //   Future.delayed(Duration(seconds: 1));
  
    //   var list = Provider.of<Chatlistmodelpage>(context, listen: false);

    //   await list.chatUserList(context);
    // });
    // FirebaseMessaging messaging = FirebaseMessaging.instance;
    // messaging.getToken().then((value) {
    //   print('Token.....   $value');
    // });

    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     if (notification.body == 'You have audio call now' || notification.body == 'You have vedio call now') {
    //       print('Token.....   ${notification.body}');
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) => Incomincall(
    //                     calltype: notification.body.toString(),
    //                   )));
    //     }
    //     var type = message.data['type'] ?? '';
    //     print('Token.....   $type');
    //   }
    // });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //     WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
  //     Future.delayed(Duration(seconds: 1));
  
  //     var list = Provider.of<Chatlistmodelpage>(context, listen: false);

  //     await list.chatUserList(context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            // extendBodyBehindAppBar: true,
          appBar: appbarbackbutton(context,'Chat'),
          body: SingleChildScrollView(
            child: Consumer<Chatlistmodelpage>(builder: (context, model, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*TextButton(
                      onPressed: () {
                        final model1 =
                            Provider.of<Chatlistmodelpage>(context,
                                listen: false);
                        print(
                            'vinay api ${model1.conversionlist()}');
                        print('vinay api ${model1.noChatFound}');

                        // print('vinay length ${model1.chatconversiondata!.length}');
                      },
                      child: Text('api call')),*/
                  // getSearchBar(context),
              
                  model.isShimmer ? shimmer() : Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: recentchatlistWidget(context, model),
                  ),
                ],
              );
            }),
          ),
        ),
 bgplaceholder()
      ],
    );
  }
}
