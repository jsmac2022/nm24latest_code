import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';

Widget cvPage(context) {
  return Container(
     // height: 100,
     padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: borderRadiuscircular(12.0),
              child: const SizedBox(
                width: 70,
                height: 75,
                child: Image(image: AssetImage('assets/images/user.png')),
              ),
            ),
            sizedboxwidth(2.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Leslie Alexander',
                  style: textstyletitleHeading6(context),
                ),
                Text(
                  'example123@gmail.com',
                  style: textstyletitleHeading6(context),
                  //style: textstylesubtitle1(context),
                ),
                Text(
                  '+41 79219 1234',
                  style: textstyletitleHeading6(context),
                ),
                Text(
                  'Total Property User - 10',
                  style: textstyletitleHeading6(context),
                ),
              ],
            ),
          ],
        ),

        sizedboxheight(8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('My Gender', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Masculine', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('My Marital Status', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Married', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('I work As', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing The En and typesetting industry. Lorem Ipsum has been the Have industry's standard dummy text fsever since the 1500s, dfff when an ffsdprinter took a galley of type and fvggg", style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('I Have Children', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('One Child', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('Are You Smoke', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('No', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('I Have Pet', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('No', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('Age', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('20+', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('Annual Gross Income(CHF)', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('90,000-1,00,000', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                uploadsuccicon(context),
                Text('Uploaded Documents', style: textstyletitleHeading6(context)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Passport/ID', style: textstylesubtitle1(context)),
            ),
            sizedboxheight(12.0),


          ],
        )
      ],
    ),

  );

}

Widget uploadsuccicon(context) {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: colorsanderchat, borderRadius: borderRadiuscircular(60.0)),
    child: Image(
      image: AssetImage('assets/icons/right.png'),
    ),
  );
}