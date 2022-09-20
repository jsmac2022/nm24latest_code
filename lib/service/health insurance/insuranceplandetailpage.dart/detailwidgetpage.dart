// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/notification/notificationpage.dart';
import 'package:nm24/service/health%20insurance/insuranceclaim/insuranceclaimpage.dart';


Widget aboutinsurance(context,model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
   headingperawidget(context,'About Insurance',"text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
   sizedboxheight(10.0),
   whatscovercheckbox(context, model),
   sizedboxheight(10.0),
   headingperawidget(context, 'No room rent capping', "About Insurance',text ever About Insurance',text ever "),
    sizedboxheight(10.0),
   headingperawidget(context, 'Restoration of cover', "About Insurance',text ever About Insurance',text ever "),
    sizedboxheight(10.0),
   headingperawidget(context, 'Bonus on No Claim', "About Insurance',text ever About Insurance',text ever "),
    sizedboxheight(10.0),
   headingperawidget(context, 'Existing Illness cover', "About Insurance',text ever About Insurance',text ever "),
    sizedboxheight(10.0),
   headingperawidget(context, 'Co-Pay', "Full claim paid by insurer"),
    sizedboxheight(10.0),
    claimprocess(context,  'Claim Process',InsuranceClaimPage()),
    claimprocess(context,  'Appliance Repair',NotificationPage()),

  ],);
}


Widget claimprocess(context,  title, ontap) {
  return Padding(
    padding: const EdgeInsets.symmetric( vertical: 10),
    child: Material(
      borderRadius: BorderRadius.circular(11),
      color: colorWhite,
      child: InkWell(
          splashColor: Colors.black54,
          onTap: () async {
            Get.to(ontap);
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => TermConditionPage()));
          },
          child: Container(
            // height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: borderCustom(),
            ),
            child: ListTile(
                minLeadingWidth: 5,
           
                title: Text(
                  title,
                  style: textstyletitleHeading6(context),
                ),
                trailing: SizedBox(
                  width: 20, height: 20,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                  // child: Image(image: AssetImage('assets/icons/mail1.png'),color:  HexColor('#CD7F7F'),))
                )),
          )),
    ),
  );
}


Widget whatscovercheckbox(context, model) {
  return Row(
    children: [
      Checkbox(
        
        shape: CircleBorder(),
        value: model.checkboxwhatscover,
        onChanged: (value) {
          model.toggleCheckboxwhatscover();
        },
        activeColor: Colors.yellowAccent,
      ),
      sizedboxwidth(5.0),
      Text(
        "What's Covered",
        style: textstyletitleHeading6(context),
      ),
    ],
  );
}

