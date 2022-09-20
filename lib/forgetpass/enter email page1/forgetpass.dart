// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables

//before 15 sept code

/*import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'forgetpassmodelpage.dart';
import 'forgetpasswidgetpage.dart';

class ForgetPassPage extends StatelessWidget {
  ForgetPassPage({Key? key}) : super(key: key);
  final formKeyforget = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            body: Consumer<ForgetPassModelPage>(builder: (context, model, _) {
              return Form(
                key: formKeyforget,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                      width: deviceWidth(context, 1.0),
                      height: deviceheight(context, 1.0),
                      padding: EdgeInsets.all(padding15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      
                              
                      children: [
                         sizedboxheight( deviceWidth(context, 0.4)),
                        iconTextWidget(context, 'FORGET PASSWORD'),
                        sizedboxheight(17.0),
                      textwrite(context),
                        sizedboxheight(32.0),
                        forgetpassemail(model),
                        sizedboxheight(32.0),
                        sandotpbtn(context, model,formKeyforget),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
                 Align(alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 200,
                        height: 200,
                                        child: Image(image:  AssetImage('assets/images/bg.png'),fit: BoxFit.contain),
                        ),
                      ),
        ],
      ),
    );
  }
}*/


// import 'package:nm24/bottom%20nav%20bar/menu/notification/flutter_local_notification.dart';
// import 'package:nm24/common/appbar/appbarpage.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/forgetpass/enter%20email%20page1/forgetpasswidgetpage.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:provider/provider.dart';
import 'forgetpassmodelpage.dart';


class ForgetPassPage extends StatefulWidget {
  ForgetPassPage({Key? key}) : super(key: key);
  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  final formKeyforget = GlobalKey<FormState>();

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            body: Consumer<ForgetPassModelPage>(builder: (context, model, _) {
              return Form(
                key: formKeyforget,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    width: deviceWidth(context, 1.0),
                    height: deviceheight(context, 1.0),
                    padding: EdgeInsets.all(padding15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        sizedboxheight( deviceWidth(context, 0.4)),
                        iconTextWidget(context, 'FORGET PASSWORD'),
                        sizedboxheight(17.0),
                        textwrite(context),
                        sizedboxheight(32.0),
                        forgetpassemail(model),
                        sizedboxheight(32.0),
                        sandotpbtn(context, model,formKeyforget),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
          Align(alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 25),
              width: 200,
              height: 200,
              child: Image(image:  AssetImage('assets/images/bg.png'),fit: BoxFit.contain),
            ),
          ),
        ],
      ),

    );
  }
}