// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/toast.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/dashboard/propertydetails/propertydetailspage.dart';
import 'package:nm24/search/searchpage.dart';

Widget cardTitleWidget(context, leadingtext, trailingtext, model) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          leadingtext,
          style: textstyletitleHeading6(context),
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(trailingtext, style: textstylesubtitle2(context)),
          ),
          onTap: () {
            /*if (leadingtext == 'Specialist')
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopJyotishiPage(
                            astrolist: model.astrologerListdb,
                          )));*/
          },
        ),
      ],
    ),
  );
}

Widget getSearchBar(context) {
  return InkWell(
    onTap: () {
      Get.to(() => SearchPage());
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: AllInputDesign(
        enabled: false,
        fillColor: colorblack.withOpacity(0.05),
        key: Key("signupemail"),
        hintText: 'Search address,city,location',
        textInputAction: TextInputAction.done,
        prefixIcon: Image(image: AssetImage('assets/icons/search.png')),
        suffixIcon: Image(image: AssetImage('assets/icons/search1.png')),
        keyBoardType: TextInputType.emailAddress,
      ),
    ),
  );
}

Widget horizontalList2(context,model) => Container(
    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10, bottom: 10.0),
    height: 210.0,
    child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              /*if (model.formKey.currentState.validate()) {
                model.propertySearchWithLocation(context);
                Get.to(() => PropertydetailsPage());
              } else {
                // model.toggleautovalidate();
                showFlutterToast('something went wrong...please try again');
              }*/
              model.propertySearchWithLocation(context);
              Get.to(() => PropertydetailsPage());
              // Get.to(() => PropertydetailsPage());
            },
            child: Card(
              elevation: 4, // Change this
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 220.0,
                height: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120.0,
                      width: deviceWidth(context, 1.0),
                      margin: EdgeInsets.all(1.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.deepOrange),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/house.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(margin: EdgeInsets.only(top: 5.0, left: 5.0), child: Text('Nacary Apartment',style: textstyletitleHeading6(context),)),
                    Container(
                      margin: EdgeInsets.only(left: 5.0, top: 5.0),
                      width: deviceWidth(context, 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chur, Switzerland',
                            style: textstylesubtitle1(context),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/star.png',
                                fit: BoxFit.fill,
                              ),
                              sizedboxwidth(5.0),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              sizedboxwidth(5.0),
                            ],
                          ),
                        ],
                      ),
                    ),
                    sizedboxheight(5.0),
                    Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      width: deviceWidth(context, 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '€ 728',
                            style:textstyleHeading3(context),
                          ),
                          Container(
                            width: 23.0,
                            height: 23.0,
                            decoration: BoxDecoration(color: colorredlight, borderRadius: borderRadiuscircular(11.5)),
                            child: Center(
                                child: Icon(
                              Icons.favorite,
                              color: colorWhite,
                              size: 15,
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
             ),
            );
          }
        )
     );

Widget horizontalList1() => Container(
    margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
    height: 120.0,
    child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4, // Change this
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 260.0,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: 90.0,
                    width: 90.0,
                    margin: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.deepOrange),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/house.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.only(top: 10.0, left: 5.0), child: Text('Nacary Apartment',style: textstyletitleHeading6(context),)),
                      Container(
                        margin: EdgeInsets.only(left: 5.0, top: 5.0),
                        child:      Text(
                            'Chur, Switzerland',
                            style: textstylesubtitle1(context),
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0, top: 5.0),
                        width: 150,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/star.png',
                                  fit: BoxFit.fill,
                                ),
                                sizedboxwidth(5.0),
                                 Text(
                                  '4.8',
                                  style:textstyleHeading3(context)!.copyWith(fontSize: 12),
                                ),
                                sizedboxwidth(5.0),
                              ],
                            ),
                             Text(
                              'from 145',
                              style: textstylesubtitle2(context),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text(
                              '€ 728',
                              style: textstyletitleHeading6(context),
                            ),
                            Container(
                              width: 23.0,
                              height: 23.0,
                              decoration: BoxDecoration(color: colorredlight, borderRadius: borderRadiuscircular(11.5)),
                              child: Center(
                                  child: Icon(
                                Icons.favorite,
                                color: colorWhite,
                                size: 15,
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }));
