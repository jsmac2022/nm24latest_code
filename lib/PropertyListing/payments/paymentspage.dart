// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/PropertyListing/payments/paymentswidget.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

class Properts extends StatefulWidget {
  Properts({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Properts> createState() => _PropertsState();
}

class _PropertsState extends State<Properts> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, "PAYMENTS"),
          body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('UPI',
                              style: textstyleHeading3(context)!
                                  .copyWith(color: colorblack)),
                          sizedboxheight(20.0),
                          paymentgatway(),
                          sizedboxheight(20.0),
                          Text('Pay with app',
                              style: textstyleHeading3(context)!
                                  .copyWith(color: colorblack)),
                          sizedboxheight(20.0),
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/cred.png'),
                                  sizedboxwidth(10.0),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.7,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Text('CRED Pay'),
                                            Text(
                                                'Get to 10% discount using CRDE Coin'),
                                          ],
                                        ),
                                        sizedboxwidth(10.0),
                                        Icon(
                                          Icons.brightness_1_outlined,
                                          color: Colors.black45,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          sizedboxheight(50.0),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.92,
                                height: 40,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Property Ad',
                                      textAlign: TextAlign.start,
                                    )),
                                    Expanded(
                                        child: Text('€120.20',
                                            textAlign: TextAlign.end,
                                            style: textstyleHeading3(context)!
                                                .copyWith(color: colorblack))),
                                  ],
                                ),
                              ),
                              nextBtn1(
                                context,
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              )),
        ),
         bgplaceholder()
      ],
    );
  }
}
