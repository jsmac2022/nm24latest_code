// ignore_for_file: prefer_const_constructors

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/forgetpass/verify%20otp%20page2/otpverifymodelpage.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:provider/provider.dart';
import 'otpverifywidgetpage.dart';

class OtpVeryfyPage extends StatefulWidget {
  OtpVeryfyPage({Key? key}) : super(key: key);

  @override
  State<OtpVeryfyPage> createState() => _OtpVeryfyPageState();
}

class _OtpVeryfyPageState extends State<OtpVeryfyPage> {
  @override
  void initState() {
    super.initState();
    // onmessage work when app is open

    FirebaseMessaging.onMessage.listen((message) async {
      if (message.notification != null) {
        print('notification body ${message.notification!.body}');
        print('notification title ${message.notification!.title}');
        print('notification route ${message.data['route']}');
      }
      //popup show
      Future.delayed(Duration(seconds: 1));
      LocalNotificationService.display(message); // isme click oute lga diya h
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<OtpVerifyModelPage>(builder: (context, model, _) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Scaffold(
              body: MediaQuery(
                data: mediaText(context),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    // decoration: BoxDecoration(image: DecorationImage(image:),
                      padding: EdgeInsets.all(padding20),
                      width: deviceWidth(context, 1.0),
                      height: deviceheight(context, 1.0),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedboxheight(deviceheight(context, 0.2)),
                          iconotpTextWidget(context, 'VERIFICATION CODE'),
                          sizedboxheight(32.0),
                          textwrite1(context),
                          sizedboxheight(20.0),
                          otptypeWidget(context, model),  //otptypeWidget(context, model),
                          sizedboxheight(30.0),
                          otpverifybtn(context, model),    //otpverifybtn(context, model, pagecomming),
                          sizedboxheight(20.0),
                          resandotprowforget(context, model),    // resandotprowforget(context, model),
                          Expanded(child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('TERM & CONDITION APPLIED',
                              style: textstylesubtitle1(context),),
                          ),
                          ),

                        ],
                      )

                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: 200,
                height: 200,
                child: Image(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.contain),
              ),
            ),

          ],
        ),
      );
    });
  }


}
