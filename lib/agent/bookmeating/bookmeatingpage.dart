

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/agent/bookmeating/bookmeetingmodelpage.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';

import 'bookmeetingwidgetpage.dart';


class BookMeetingPage extends StatelessWidget {
  const BookMeetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarbackbutton(context, 'Book a Meeting'),
      body: Consumer<BookmeetingModelPage>(
        builder: (context,model,_) {
          return Container(
            padding: EdgeInsets.all(15.0),

            child: SingleChildScrollView(child: Column(children: [titlemeeting(),
            sizedboxheight(20.0),
            messagebox(),
              sizedboxheight(20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               selectdate(context, model),selecttime(context, model),
            ],),
                  sizedboxheight(50.0),
             bookameeting(context, model)
           ],))
            );
        }
      ),
    );
  }
}