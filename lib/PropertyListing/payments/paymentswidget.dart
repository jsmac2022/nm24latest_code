// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/paymentsuccess/paymentsuccesspage.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';

Widget nextBtn1(
  BuildContext context,
) {
  return Button(
    btnWidth: MediaQuery.of(context).size.width * 0.9,
    buttonName: 'Pay Now',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(Paymentsuccess());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget paymentgatway() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              backgroundColor: colorWhite,
              radius: 25,
              child: Image.asset('assets/images/paypal.png'),
            ),
          ),
          sizedboxheight(8.0),
          Text('Paypal')
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              backgroundColor: colorWhite,
              radius: 25,
              child: Image.asset('assets/images/Rectangle 18914.png'),
            ),
          ),
          sizedboxheight(8.0),
          Text('Gpay')
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              backgroundColor: colorWhite,
              radius: 25,
              child: Image.asset('assets/images/strip.png'),
            ),
          ),
          sizedboxheight(8.0),
          Text('Stripe')
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              backgroundColor: colorWhite,
              radius: 25,
              child: Image.asset('assets/images/Amazon.png'),
            ),
          ),
          sizedboxheight(8.0),
          Text('FedMo.')
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              backgroundColor: colorWhite,
              radius: 25,
              child: Image.asset('assets/images/upi.png'),
            ),
          ),
          sizedboxheight(8.0),
          Text('More')
        ],
      ),
    ],
  );
}
