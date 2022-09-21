// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/login/loginwidgetpage.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:nm24/signup/signuppagemodel.dart';
import 'package:provider/provider.dart';
import 'signupwidgetpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key, this.initialtab}) : super(key: key);
  final initialtab;

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance!.addPostFrameCallback((timeStamp)async {
    final loginmodel = Provider.of<SignUpModelpage>(context, listen: false);
    loginmodel.tabController = TabController(vsync: this, length: 2, initialIndex: widget.initialtab ?? 0);

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
            body: MediaQuery(
              data: mediaText(context),
              child: Consumer<SignUpModelpage>(builder: (context, model, _) {
                return SingleChildScrollView(
                  keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    padding: EdgeInsets.all(padding15),
                    width: deviceWidth(context, 1.0),
                    height: deviceheight(context, 1.0),
                    child: Form(
                      key: model.formKeysignup,
                      // ignore: deprecated_member_use
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedboxheight(deviceheight(context, 0.05)),
                          titlesubtitlecontainer(
                              context, 'Sign Up', 'Create Your account'),
                          sizedboxheight(24.0),
                          signupfullname(model),
                          sizedboxheight(20.0),
                          signupemail(model),
                          sizedboxheight(20.0),
                          signupmobile(model),
                          sizedboxheight(20.0),
                          signupPassword(model),
                          checkboxTC(context, model),
                          sizedboxheight(20.0),
                          signupBtn(context, model),
                          sizedboxheight(20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              dividerHorizontal(context, 0.3, 1.0),
                              sizedboxwidth(8.0),
                              Text('Or sign in with'),
                              sizedboxwidth(8.0),
                              dividerHorizontal(context, 0.3, 1.0),
                            ],
                          ),
                          sizedboxheight(20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              fbboxbtn1(),
                              sizedboxwidth(15.0),
                              googleboxbtn2(
                                context,
                              ),
                              sizedboxwidth(15.0),
                              boxbtn3(),
                            ],
                          ),
                          sizedboxheight(10.0),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: allreadyhaveanAccount(context),
                            ),
                          ),
                          dividerHorizontal(context, 0.35, 5.0),
                        ],
                      ),
                    ),
                  ),
                );
              }),
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
  }
}
























/*
import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/login/loginwidgetpage.dart';
import 'package:nm24/signup/signuppagemodel.dart';
import 'package:provider/provider.dart';
import 'signupwidgetpage.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            body: MediaQuery(
              data: mediaText(context),
              child: Consumer<SignUpModelpage>(builder: (context, model, _) {
                return SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    padding: EdgeInsets.all(padding15),
                    width: deviceWidth(context, 1.0),
                    height: deviceheight(context, 1.0),
                    child: Form(
                      key: model.formKeysignup,
                      // ignore: deprecated_member_use
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedboxheight(deviceheight(context, 0.05)),
                          titlesubtitlecontainer(
                              context, 'Sign Up', 'Create Your account'),
                          sizedboxheight(27.0),
                          signupfullname(model),
                          sizedboxheight(22.0),
                          signupemail(model),
                          sizedboxheight(22.0),
                          signupmobile(model),
                          sizedboxheight(22.0),
                          signupPassword(model),
                          checkboxTC(context, model),
                          sizedboxheight(22.0),
                          signupBtn(context, model),
                          sizedboxheight(25.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              dividerHorizontal(context, 0.3, 1.0),
                              sizedboxwidth(10.0),
                              Text('Or sign in with'),
                              sizedboxwidth(10.0),
                              dividerHorizontal(context, 0.3, 1.0),
                            ],
                          ),
                          sizedboxheight(20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              fbboxbtn1(),
                              sizedboxwidth(15.0),
                              //  Consumer<GoogleSignUpModelPage>(builder: (context,googlesignupmodel,_){
                              //    return  googleboxbtn2(context,googlesignupmodel);
                              //  }),
                              googleboxbtn2(
                                context,
                              ),
                              sizedboxwidth(15.0),
                              boxbtn3(),
                            ],
                          ),
                          sizedboxheight(10.0),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: allreadyhaveanAccount(context),
                            ),
                          ),
                          dividerHorizontal(context, 0.35, 5.0),
                        ],
                      ),
                    ),
                  ),
                );
              }),
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
  }
}
*/

