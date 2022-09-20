import 'package:flutter/cupertino.dart';
import 'package:nm24/common/styles/const.dart';

Widget uploadsuccicon() {
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
        color: colorsanderchat, borderRadius: borderRadiuscircular(100.0)),
    child: Image(
      image: AssetImage('assets/icons/right.png'),
    ),
  );
}

Widget headingsubtitlewidget1(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Payment Successful",
          textAlign: TextAlign.center,
          style: textstyleHeading2(context)!.copyWith(color: colorblack)),
      sizedboxheight(20.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text('Your payment was successfully completed',
            textAlign: TextAlign.center,
            style: textstyleHeading3(context)!.copyWith(color: colorblack)),
      )
    ],
  );
}
