
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';

Container chatimgTypingwidgetBottm(BuildContext context, model) {
  return Container(
    // height: 75,
    constraints: BoxConstraints(minHeight: 50),
    padding: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(color: colorsanderchat, borderRadius: BorderRadius.circular(18.0)),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // IconButton(onPressed: () {}, icon: Image.asset('assets/icons/attech.png')),
        typingchatbox(context, model),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.emoji_emotions_outlined,
        //     size: 26,
        //     color: Colors.grey,
        //   ),
        // ),
        Container(height: 45,
          // margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: colorskyblue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              onPressed: () async {
                // var dbcontroller = Provider.of<DashboardModelPage>(context, listen: false);
                // if (dbcontroller.isGeustLoggedIn) {
                //   geustloginfirst(context);
                //   model.typingreset();
                // } else {
                //   model.conversiontypingsubmit(context);
                //   Future.delayed(Duration(milliseconds: 400));
                //   await model.conversionlist();
                // }
              },
              icon: Icon(
                // Icons.mic_none,
                Icons.send,size: 20,
                color: Colors.white,
              )),
        ),
      ],
    ),
  );
}

Widget typingchatbox(context, model) {
  return Expanded(
    child: TextField(
      onTap: () async {
        // await model
        //   ..conversionlist();
      },
      controller: model.typingmessage,
      enabled: true,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.fromLTRB(15.0, 5.0, 0, 5.0),
        border:  OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        isDense: true,
        hintText: 'Type something...',
        hintStyle: textstyletitleHeading6(context)!.copyWith(color: colorblack.withOpacity(0.5)),
        fillColor: colorsanderchat,
        filled: true,
      ),
    ),
  );
}
