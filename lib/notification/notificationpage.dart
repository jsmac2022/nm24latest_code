// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'notificationmodelpage.dart';
import 'notificationpage_widget.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var list = Provider.of<NotificationModelPage>(context, listen: false);
      await list.getclear();
      // await list.notificationlist(context);
      await list.getloopdata();
      print('init noti');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, 'Notification'),
          body: Consumer<NotificationModelPage>(builder: (context, model, _) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  notifiListWidget(context, model),
                  sizedboxheight(50.0)
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
