// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nm24/common/styles/const.dart';

Widget propertybox() {
  return SizedBox(
    height: 120,
    child: Card(
      elevation: 4, // Change this
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 260.0,
        //padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Container(
              height: 120.0,
              width: 90.0,
              // margin: const EdgeInsets.only(),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.deepOrange),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                child: Image.asset(
                  'assets/images/Frame22.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 10.0),
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
                          const Text(
                            '4.8',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          sizedboxwidth(5.0),
                        ],
                      ),
                      const Text(
                        'from 145',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 5.0, left: 5.0),
                    child: Text(
                      'Entire rental unit,\nPuri Orchad Apartement',
                      overflow: TextOverflow.ellipsis,
                    )),
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 5.0),
                  child: const Text(
                    'Nacary Apartment',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '€ 728/month',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: Image.asset(
                          'assets/icons/fav.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget bottomsheet(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: GestureDetector(
      onTap: () => Get.bottomSheet(
          Container(
            height: deviceheight(context, 0.8), padding: EdgeInsets.only(top: 10), child: horizontalList1map(context)),
          elevation: 20.0,
          // enableDrag: false,
          isScrollControlled: true,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ))),
      child: Container(
        height: 55.0,
        width: deviceWidth(context, 1.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
        child: SizedBox(
            width: deviceWidth(context, 1.0),
            height: deviceheight(context, 1.0),
            // padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 50.0,
                  height: 3.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'See more 72 results',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontWeight: fontWeight700),
                )
              ],
            )),
      ),
    ),
  );
}

Widget horizontalList1map(context) => Container(
    margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
    child: Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Showing 72 results',
                style: textstyletitleHeading6(context)
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Icon(Icons.filter_list),
                  ),
                  Text(
                    'Short',
                    style:textstyletitleHeading6(context)
                  ),
                ],
              ),
            ],
          ),
        ),
        propertyContainerbottomsheat(context)
      ],
    ));

Container propertyContainerbottomsheat(context) {
  return Container(
        margin: EdgeInsets.only(top: 30),
        child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  elevation: 4, // Change this
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SizedBox(
                    width: deviceWidth(context, 1.0),
                    height: 120,
                    child: Row(
               
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 120.0,
                          width: 100.0,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.deepOrange),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                            child: Image.asset(
                              'assets/images/Frame11.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
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
                                              
                                            ),
                                            sizedboxwidth(5.0),
                                          ],
                                        ),
                                      Text(
                                          'from 145',
                                          style: textstylesubtitle2(context)
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: deviceWidth(context, 0.35),
                                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                                        child: Text(
                                          'Entire rental unit,Puri Orchad Apartement',
                                          overflow: TextOverflow.ellipsis,maxLines: 2,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 5.0, top: 5.0),
                                      child: Text(
                                        'Nacary Apartment',
                                         style:textstylesubtitle2(context)
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5.0),
                                      width: 150,
                                      child:  Text(
                                        '€ 728/month',
                                        style:textstylesubtitle2(context)
                                      ),
                                    )
                                  ],
                                ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: SizedBox(
                                              width: 25.0,
                                              height: 25.0,
                                              child: Image.asset(
                                                'assets/icons/fav.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }),
      );
}
