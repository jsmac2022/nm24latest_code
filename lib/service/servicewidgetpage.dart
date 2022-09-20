// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/styles/const.dart';

Widget carinsurance(context, image, title, ontap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Material(
      borderRadius: BorderRadius.circular(11),
      color: colorWhite,
      child: InkWell(
          splashColor: Colors.black54,
          onTap: () async {
            Get.to(ontap);
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => TermConditionPage()));
          },
          child: Container(
            // height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: borderCustom(),
            ),
            child: ListTile(
                minLeadingWidth: 5,
                leading: Container(
                    padding: EdgeInsets.only(top: 2),
                    // width: 21,
                    height: 21,
                    child: Image(
                      image: AssetImage(image),
                    )),
                title: Text(
                  title,
                  style: textstyletitleHeading6(context),
                ),
                trailing: SizedBox(
                  width: 20, height: 20,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                  // child: Image(image: AssetImage('assets/icons/mail1.png'),color:  HexColor('#CD7F7F'),))
                )),
          )),
    ),
  );
}
