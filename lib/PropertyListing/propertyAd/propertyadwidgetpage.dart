// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/payments/paymentspage.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';

Widget nextBtn1(
  BuildContext context,
) {
  return Button(
    buttonName: 'Pay €20 Per Ad',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(Properts());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget sevebutt3(
  BuildContext context,
) {
  return Button(
    buttonName: 'Free Listing',
    textColor: colorredlight,
    btnColor: colorWhite,
    borderColor: colorredlight,
    // key: Key('login_submit'),
    onPressed: () {
      // Get.to(PropertyVerification2());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

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
      Text("Congratulations!",
          textAlign: TextAlign.center,
          style: textstyleHeading2(context)!.copyWith(color: colorblack)),
      sizedboxheight(20.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text('Your property Ad will go live shortiy...',
            textAlign: TextAlign.center,
            style: textstyleHeading3(context)!.copyWith(color: colorblack)),
      )
    ],
  );
}
