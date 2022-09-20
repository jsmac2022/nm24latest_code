// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nm24/appform/pages/page1.dart';
import 'package:nm24/appform/pages/page2.dart';
import 'package:nm24/appform/pages/page4.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';

Widget page3(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titletext(context, 'Intended use'),
      radiobtnpage3(model),
      sizedboxheight(22.0),
      datep3(context, model),
      sizedboxheight(22.0),
      noofchildren(model),
      sizedboxheight(22.0),
      noofchild(model),
      sizedboxheight(22.0),
      nyearofbirthchild(model),
      sizedboxheight(22.0),
        p3radiogroupqut(context, model),
      sizedboxheight(10.0),
      pemovingresion(model),
      sizedboxheight(22.0),
     colorboxcontaionerp3(context,model),
      sizedboxheight(22.0),
      twobtnp3(model) ,
      sizedboxheight(22.0),
    ],
  );
}

Widget radiobtnpage3(model) {
  return RadioGroup<String>.builder(
    direction: Axis.horizontal,
    activeColor: colorredlight,
    horizontalAlignment: MainAxisAlignment.start,
    groupValue: model.radiop3,
    onChanged: (value) {
      model.toogleradiobtnp3(value);
    },
    items: model.radiobtnLabellistp3,
    itemBuilder: (item) => RadioButtonBuilder(
      item,
    ),
  );
}

Widget datep3(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Desire refrence date',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      InkWell(
        onTap: () {
          model.selectDatep3(context);
        },
        child: SizedBox(
          width: deviceWidth(context, 1.0),
          child: AllInputDesign(
            textInputAction: TextInputAction.next,
            key: Key("dob"),
            enabled: false,
            labelText: model.gettextp3(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: 'DD-MM-YYYY',
            suffixIcon: Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey,
              size: 20,
            ),
            keyBoardType: TextInputType.emailAddress,
            //  validatorFieldValue: 'name12',
            // validator: validateAreaName,
          ),
        ),
      ),
    ],
  );
}

Widget noofaudlt(model) {
  return AllInputDesign(
    key: Key("noofaudlt"),
    // controller: model.signupMobile,
    maxLength: 10,
    inputHeaderName: 'Number of Audlt',
    counterText: '',
    labelText: 'Phone Number',
    hintText: 'Enter your number',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/call.png')),
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget noofchildren(model) {
  return AllInputDesign(
    key: Key("noofchildren"),
    // controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    inputHeaderName: 'Number of Children',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget noofchild(model) {
  return AllInputDesign(
    key: Key("noofchild"),
    // controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    inputHeaderName: 'Number of Child',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget nyearofbirthchild(model) {
  return AllInputDesign(
    key: Key("nyearofbirthchild"),
    // controller: model.signupMobile,
    maxLength: 10,
    counterText: '',
    inputHeaderName: 'Year of Birth Child',
    autofillHints: [AutofillHints.telephoneNumberCountryCode],
    textInputAction: TextInputAction.next,
    keyBoardType: TextInputType.number,
    validatorFieldValue: 'mobile',
    validator: validateMobile,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
  );
}

Widget pemovingresion(model) {
  return AllInputDesign(
    key: Key("pemovingresion"),
    // controller: model.signupname,
    inputHeaderName: 'Reason of moving',
    textInputAction: TextInputAction.next,
    validatorFieldValue: 'name',
    validator: validateName,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
    ],
    // textCapitalization: TextCapitalization.sentences,
  );
}

Widget p3radiogroupqut(context, model) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 8),
          width: deviceWidth(context, 1.0),
          decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: borderRadiuscircular(12.0),
              border: borderCustomlight(),
              boxShadow: boxShadowcontainer()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: deviceWidth(context, 0.5),
                child: Text(model.questionsp3[index],style: textstylesubtitle1(context)!.copyWith(color: colorblack),)),
              RadioGroup<String>.builder(
                direction: Axis.horizontal,
                activeColor: colorredlight,
                spacebetween: 0,
                horizontalAlignment: MainAxisAlignment.start,
                groupValue: model.toogleradiobtnvaluep3(index),
                onChanged: (value) {
                  model. toogleradiobtnp33(index, value) ;
                },
                items: model.radiobtnLabellistp33,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
              ),
            ],
          ),
        );
      });
}

Widget colorboxcontaionerp3(context,model) {
  return Container(
    width: deviceWidth(context, 1.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.pink.withOpacity(0.1),
      border: Border.all(
        color: Colors.black12,
        width: 1,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Increase Your Chance',
          style: textstyletitleHeading6(context),
        ),
        sizedboxheight(8.0),
        Text('The following information is voluntary. But you may increase Your chances of being accepted.',
            style: textstylesubtitle1(context)!.copyWith(color: colorblack)),
        Divider(),
         sizedboxheight(8.0),
        p3Cradiogroupqut(context, model),
         sizedboxheight(8.0),
        Text('Reference contact with the employer',
            textAlign: TextAlign.center, style: textstyletitleHeading6(context)),
        sizedboxheight(8.0),
        Text('The following information is voluntary. But you may increase Your chances of being accepted.',
            textAlign: TextAlign.start, style: textstylesubtitle1(context)!.copyWith(color: colorblack)),
        sizedboxheight(20.0),
        titletext(context, 'Current landloard(as Reference)'),
        fname1p3(),
        sizedboxheight(20.0),
        phonenumber(),
           sizedboxheight(10.0),
        checkboxTC1(context, model),
        titletext(context, 'Personal message to the landlord' ),
         sizedboxheight(5.0),
Text('with a personal message you can you feel positive about other applicants lift up. face the landlord in a few lines forward and convey it to him such a first impression.',style: textstylesubtitle1(context),)
,     sizedboxheight(10.0),
    geetingformula1p3(),
    sizedboxheight(10.0),
     yourmessp3(),
      ],
    ),
  );
}

Widget fname1p3() {
  return AllInputDesign(
    inputHeaderName: 'Name of the contact person, the company',
    key: Key("fname1p3"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget twobtnp3(model) {
  return Column(
    children: [
      Button(
        buttonName: 'Further',
        onPressed: () {
          model.incresestep();
        },
      ),
      sizedboxheight(28.0),
      Button(
        buttonName: 'Return',
        btnColor: colorWhite,borderColor: colorredlight,textColor: colorredlight,
        onPressed: () {
          model.decresestep();
        },
      )
    ],
  );
}

Widget geetingformula1p3() {
  return AllInputDesign(
    inputHeaderName: 'Greeting formula',
    key: Key("geetingformula1p3"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget yourmessp3() {
  return AllInputDesign(
    maxLines: 6,
    inputHeaderName: 'Your Message',
    key: Key("yourmessp3"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget p3Cradiogroupqut(context, model) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 8),
          width: deviceWidth(context, 1.0),
          decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: borderRadiuscircular(12.0),
              border: borderCustomlight(),
              boxShadow: boxShadowcontainer()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: deviceWidth(context, 0.4),
                child: Text(model.questionsCp3[index],style: textstylesubtitle1(context)!.copyWith(color: colorblack),)),
              RadioGroup<String>.builder(
                direction: Axis.horizontal,
                activeColor: colorredlight,
                spacebetween: 0,
                
                horizontalAlignment: MainAxisAlignment.start,
                groupValue: model.toogleradiobtnvalueCp3(index),
                onChanged: (value) {
                  model.toogleradiobtnpCp3(index, value) ;
                },
                items: model.radiobtnLabellistp33,
                itemBuilder: (item) => RadioButtonBuilder(
                  item,
                ),
              ),
            ],
          ),
        );
      });
}
