// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarcarosalslider.dart';
import 'package:nm24/common/styles/const.dart';
import 'propertydetailswidget.dart';

class PropertydetailsPage extends StatelessWidget {
  PropertydetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: deviceWidth(context, 1.0),
           height: deviceheight(context, 1.0),
        child: Column(
          children: [
            SizedBox(
              height: 258,
              child: Stack(
                children: [
                  
                  sliderdashboard(context),
                  appbarcarosolslider(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    // height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      physics:BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rent a 2 72 room apartment in chur',
                            style: hedingHintFontStyle,
                          ),
                          sizedboxheight(10.0),
                          Text(
                            'Lagerstrasse 5,7000 Chur - CHF 1\'470 incl. utilities per month',
                          ),
                          sizedboxheight(20.0),
                          savepicbtn(context),
                          sizedboxheight(20.0),
                          rent(),
                          sizedboxheight(20.0),
                          details(),
                          sizedboxheight(20.0),
                          surroundings(),
                          sizedboxheight(20.0),
                          description(),
                          sizedboxheight(20.0),
                          subscription(context),
                          sizedboxheight(20.0),
                          Text(
                            'Subscription for listing in 7000 Chur',
                            style: hedingHintFontStyle,
                          ),
                          sizedboxheight(20.0),
                          horizontalList2,
                          sizedboxheight(10.0),
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
      ),
    );
  }
}
