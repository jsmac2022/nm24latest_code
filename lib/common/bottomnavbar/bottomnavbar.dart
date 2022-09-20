
// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:provider/provider.dart';
import 'bottomnavbar_modelpage.dart';
import 'bottomnavbarwidget.dart';

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     importance: Importance.high,
//     playSound: true);

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('A bg message just showed up :  ${message.messageId}');
// }

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  @override
  void initState() {
    super.initState();

//when app terminate and user tap notification then instance open the app
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        final routeCome = message.data['route'];
        print('vkkkkkkkkkk terminateapp router come $routeCome');
        Navigator.of(context).pushNamed(routeCome);
      }
    });

    // onmessage work when app is open
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.body);
        print(message.notification!.title);
        print(message.data['route']);
      }
      //popup show
      LocalNotificationService.display(message); // isme click oute lga diya h
    });

    // when the app is in backgrodund but opened and user tap on notification
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeCome = message.data['route'];
      print('vkkkkkkkkkk notification router come $routeCome');
      Navigator.of(context).pushNamed(routeCome);
    });
  }


  // void initState() {
  //   super.initState();

  //   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       print('demo1');
  //       flutterLocalNotificationsPlugin.show(
  //           notification.hashCode,
  //           notification.title,
  //           notification.body,
  //           NotificationDetails(
  //             android: AndroidNotificationDetails(
  //               channel.id,
  //               channel.name,
  //               color: Colors.blue,
  //               playSound: true,
  //               icon: '@drawable/ic_launcher',
  //             ),
  //           ));
  //     }
  //   });
  //   FirebaseMessaging.instance
  //       .getInitialMessage()
  //       .then((RemoteMessage? message) {
  //     print('demo2');
  //     if (message != null) {
  //       showNotification();
  //     }
  //   });
  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     print('A new onMessageOpenedApp event was published!');
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       print('demo3');
  //       showNotification();
  //     }
  //   });

  //   // name1();
  //   FirebaseMessaging.instance.getToken().then((value) {
  //     // ignore: unused_local_variable
  //     var tokan = value;
  //   });
  // }

  // void showNotification() {
  //   print('notification');
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => NotificationPage(),
  //     ),
  //   );
  // }

  Future<bool> backdb(model) async {
    if (model.bottombarzindex != 0) {
      model.togglebottomindexreset();
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomnavbarModelPage>(builder: (context, model, _) {
      return WillPopScope(
        onWillPop: () {
          return model.bottombarzindex == 0
              ? onWillPop(context)
              : backdb(model);
        },
        child: Scaffold(
          body: model.bottombarScreens[model.bottombarzindex],
          bottomNavigationBar: bottomNavBarPagewidget(context,model),
        ),
      );
    });
  }
}
