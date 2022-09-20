// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nm24/dashboard/filtterscreen/filtterscreenpage.dart';

List imagesSliders = [
  'assets/images/home.png',
  'assets/images/home1.png',
  'assets/images/home2.png',
  'assets/images/home3.png',
  'assets/images/home4.png',
  'assets/images/home5.png',
];

CarouselSlider sliderdashboard(context) {
  return CarouselSlider.builder(
    itemCount: imagesSliders.length,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
      // final
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: deviceWidth(context, 1.0),
              height: 243,  //250
              child: Image.asset(
                imagesSliders[itemIndex],
                fit: BoxFit.fill,
              )),
        ],
      );
    },
    // carouselController: model.buttonCarouselController,
    options: CarouselOptions(
      height: 280,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      viewportFraction: 1,
      aspectRatio: 16 / 10,
      initialPage: 0,
    ),
  );
}



Widget savepicbtn(
  context,
) {
  return Button(
    onPressed: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FiltterPage()));
    },
    btnWidth: deviceWidth(context, 0.9),
    buttonName: 'Contact Sdvertiser',
    textColor: colorredlight,
    btnColor: colorWhite,
    elevation: 0,
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
  );
}

Widget rent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Rent',
        style: hedingHintFontStyle,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Gross rent (incl.utilities)'),
          Text('CHF 1\'470'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Net rent (excl.utilities)'),
          Text('CHF 1\'330'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Rent charges'),
          Text('CHF 140'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Price unit'),
          Text('per month'),
        ],
      ),
    ],
  );
}

Widget details() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Details',
        style: hedingHintFontStyle,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Referefnce'),
          Text('04353.3432.3423'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Number of room'),
          Text('2'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Floor'),
          Text('ground floor'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Livingspace'),
          Text('59 m'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
        children: [
          Text('Year of construction'),
          Text('2017'),
        ],
      ),
      sizedboxheight(12.0),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Facilities'),
          Text('View, Balcony/Garden, Pets allowed, Garage'),
        ],
      ),
      Divider(
        color: Colors.grey,
        height: 1.0,
        thickness: 1.0,
      ),
      sizedboxheight(12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Available'),
          Text('1 march 2022'),
        ],
      ),
    ],
  );
}

Widget surroundings() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Surroundings',
        style: hedingHintFontStyle,
      ),
      sizedboxheight(12.0),
      SizedBox(
        height: 200,
        child: Image.asset(
          'assets/images/google@2x.png',
          fit: BoxFit.cover,
        ),
      )
    ],
  );
}

Widget description() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '2.5 Zimmer-Neubauwohnung in direkter Nahe zum Stadtzrntrum',
        style: hedingHintFontStyle,
      ),
      sizedboxheight(12.0),
      Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.')
    ],
  );
}

Widget subscription(context) {
  return Card(
    elevation: 8,
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subscription for listings in 7000 Chur',
            style: hedingHintFontStyle,
          ),
          sizedboxheight(12.0),
          Text(
            'Be instantly notified when similar listings arrive.',
          ),
          sizedboxheight(12.0),
          subscriptionbutton(context)
        ],
      ),
    ),
  );
}

Widget subscriptionbutton(
  BuildContext context,
) {
  return Button(
    buttonName: 'Create Subscribtion',
    // key: Key('login_submit'),
    onPressed: () {
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}

Widget horizontalList2 = Container(
    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10, bottom: 10.0),
    height: 200.0,
    child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepOrange),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/house.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Text('3 rooms Apartment')),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, top: 5.0),
                    width: deviceWidth(context, 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rental',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
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
                                fontSize: 10,
                              ),
                            ),
                            sizedboxwidth(5.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: deviceWidth(context, 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs. 728',
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
            ),
          );
        }));
