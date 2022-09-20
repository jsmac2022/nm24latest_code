// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
/*import 'package:flutter/material.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/login/loginwidgetpage.dart';
import 'package:nm24/signup/signuppage.dart';
import 'package:provider/provider.dart';
import 'loginmodelpage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginModelPage>(builder: (context, model, _) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: WillPopScope(
          onWillPop: () {
            return onWillPop(context);
          }, 
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
                      padding: EdgeInsets.all(padding15),
                      width: deviceWidth(context, 1.0),
                      height: deviceheight(context, 1.0),
                      child: Form(
                        key: formKey1,
                        // ignore: deprecated_member_use
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedboxheight(32.0),
                            sizedboxheight(
                                MediaQuery.of(context).size.height * 0.1),
                            titlesubtitlecontainer(
                                context, 'Sign In', 'Welcome back!'),
                            sizedboxheight(deviceheight(context, 0.06)),
                            loginemail(model),
                            sizedboxheight(20.0),
                            loginPassword(model),
                            forgetpassword(context),
                            sizedboxheight(26.0),
                            loginBtn(context, model, formKey1),
                            sizedboxheight(25.0),
                            Row(
                              children: [
                                sininwithAccount(
                                  context,
                                  "Or sign in with",
                                )
                              ],
                            ),
                            sizedboxheight(25.0),
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
                                child: allreadydonthaveanAccount(
                                    context,
                                    "Don't have an account?",
                                    'Sign Up',
                                    SignupPage()),
                              ),
                            ),
                            dividerHorizontal(context, 0.30, 5.0),
                            // Container(width: 200,height: 200,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg.png'))),)
                          ],
                        ),
                      ),
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
        ),
      );
    });
  }
}*/

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/login/loginwidgetpage.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:nm24/signup/signuppage.dart';
import 'package:provider/provider.dart';
import 'loginmodelpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.initialtab}) : super(key: key);
  final initialtab;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final loginmodel = Provider.of<LoginModelPage>(context, listen: false);
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
    return Consumer<LoginModelPage>(builder: (context, model, _) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: WillPopScope(
          onWillPop: () {
            return onWillPop(context);
          },
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
                      padding: EdgeInsets.all(padding15),
                      width: deviceWidth(context, 1.0),
                      height: deviceheight(context, 1.0),
                      child: Form(
                        key: formKey1,
                        // ignore: deprecated_member_use
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedboxheight(32.0),
                            sizedboxheight(
                                MediaQuery.of(context).size.height * 0.1),
                            titlesubtitlecontainer(
                                context, 'Sign In', 'Welcome back!'),
                            sizedboxheight(deviceheight(context, 0.06)),
                            loginemail(model),
                            sizedboxheight(20.0),
                            loginPassword(model),
                            forgetpassword(context),
                            sizedboxheight(26.0),
                            loginBtn(context, model, formKey1),
                            sizedboxheight(25.0),
                            Row(
                              children: [
                                sininwithAccount(
                                  context,
                                  "Or sign in with",
                                )
                              ],
                            ),
                            sizedboxheight(25.0),
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
                                child: allreadydonthaveanAccount(
                                    context,
                                    "Don't have an account?",
                                    'Sign Up',
                                    SignupPage()),
                              ),
                            ),
                            dividerHorizontal(context, 0.30, 5.0),
                            // Container(width: 200,height: 200,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg.png'))),)
                          ],
                        ),
                      ),
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
        ),
      );
    });
  }
}