// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

import 'createlisting1widget.dart';

class ListingPage1 extends StatefulWidget {
  ListingPage1({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<ListingPage1> createState() => _ListingPage1State();
}

class _ListingPage1State extends State<ListingPage1> {

  TextEditingController nameController = TextEditingController();
  int? _radioValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _radioValue= value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Scaffold(
           appBar: appbarbackbutton(context, "Create Listing."),
         
body: SizedBox(
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
child: Padding(
  padding: const EdgeInsets.all(10.0),
  child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            contectditails(),
            sizedboxheight(15.0),
            Text('Phone number',style: labelHintFontStyle),
            sizedboxheight(15.0),
            mobileemail(),
            sizedboxheight(15.0),
            // postingas(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: colorredlight,

                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('The current tenant',)
                  ],
                ),

                Row(
                  children: [
                    Radio(
                      activeColor: colorredlight,
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('The property owner',),
                  ],
                ),

                Row(
                  children: [
                    Radio(
                      activeColor: colorredlight,
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('A real agency / company',),
                  ],
                ),

              ],
            ),
            sizedboxheight(30.0),
            publishBtn(context,),
          ],
        ),
  ),
),
),
        ),
         bgplaceholder()
      ],
    );
  }
}
