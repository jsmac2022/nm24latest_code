import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/upload%20cv/upload_widgetpage.dart';
import 'package:nm24/complete%20profile/upload%20cv/uploadcv_modelpage.dart';
import 'package:provider/provider.dart';

class UploadCVPage extends StatelessWidget {
 const UploadCVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UploadCVModelPage>(builder: (context, model, _) {
      return Stack(
        children: [
          Scaffold(
            appBar: appbarbackbutton(context, 'YOUR CV'),
            body: Container(
              padding: const EdgeInsets.all(6.0),
              width: deviceWidth(context, 1.0),
              child: Consumer<UploadCVModelPage>(builder: (context, model, _) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    // cvPage(context,model),
                      // model.getCV(),
                    Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: borderRadiuscircular(12.0),
                              child: const SizedBox(
                              width: 70,
                              height: 75,
                              child: Image(image: AssetImage('assets/images/userimage.png')),
                            ),
                          ),

                          sizedboxwidth(20.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              //TextField(controller: model.cvName, style: TextStyle(color: Colors.orange,backgroundColor: Colors.black),),
                              // Text(model.cvEmail, style: textstyletitleHeading6(context),),
                              // Text(model.cvMobile, style: textstyletitleHeading6(context),),
                              // Text(model.cvTotalProperty, style: textstyletitleHeading6(context),),

                              Text('Leslie Alexander', style: textstyletitleHeading6(context),),
                              Text('example123@gmail.com', style: textstyletitleHeading6(context),),   //style: textstylesubtitle1(context),
                              Text('+41 79219 1234', style: textstyletitleHeading6(context),),
                              Text('Total Property User - 10', style: textstyletitleHeading6(context),),

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
                              const SizedBox(width: 5,),
                              Text('My Gender', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('Masculine', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('My Marital Status', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('Married', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('I work As', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text("Lorem Ipsum is simply dummy text of the printing The En and typesetting industry. Lorem Ipsum has been the Have industry's standard dummy text fsever since the 1500s, dfff when an ffsdprinter took a galley of type and fvggg", style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('I Have Children', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('One Child', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('Are You Smoke', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('No', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('I Have Pet', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('No', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('Age', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('20+', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('Annual Gross Income(CHF)', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('90,000-1,00,000', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              uploadsuccicon(context),
                              SizedBox(width: 5,),
                              Text('Uploaded Documents', style: textstyletitleHeading6(context)),
                            ],
                          ),
                          Text('Passport/ID', style: textstylesubtitle1(context)),
                          sizedboxheight(12.0),


                                ],
                              ),

                            ],
                          ),

                        ),


                    ],
                  ),
                );
              }),
            ),
          ),
           // bgplaceholder()
        ],
      );
    });
  }
}

Widget uploadsuccicon(context) {
  return Container(
    width: 15,
    height: 15,
    decoration: BoxDecoration(
        color: colorsanderchat, borderRadius: borderRadiuscircular(60.0)),
    child: const Image(
      // image: AssetImage('assets/icons/right.png'),
      image: AssetImage('assets/icons/right_tick.png',),
    ),
  );
}