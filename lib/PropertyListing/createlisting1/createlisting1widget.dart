// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/createlisting2/createlisting2page.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';


Widget contectditails(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      sizedboxheight(20.0),
      Text('Contant Detalis',style: hedingHintFontStyle,),
      sizedboxheight(15.0),
      Text('Your contact detsild are nor show in public.\nThey\'re used by our staff only.',style: labelHintFontStyle,),

    ],
  );
}

Widget mobileemail() {
  return AllInputDesign(
    key: Key("phone"),
    fillColor: colorWhite,
    hintText: '',
    // controller: model.loginEmail,
    // autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    // prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    focusedBorderColor: colorskyblue,
    enabledOutlineInputBorderColor: colorblack.withOpacity(0.2),
    keyBoardType: TextInputType.phone,
    validatorFieldValue: 'phone',
    validator: validateMobile,
  );
}

Widget postingas(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      sizedboxheight(20.0),
      Text('I\'m posting as',style: hedingHintFontStyle,),
      sizedboxheight(15.0),

      Row(
        children: [
          Icon(Icons.brightness_1_outlined,color: colorredlight),
          sizedboxwidth(5.0),
          Text('The current tenant',),
        ],
      ),
      sizedboxheight(10.0),
      Row(
        children: [
          Icon(Icons.brightness_1_outlined,color: colorredlight),
          sizedboxwidth(5.0),
          Text('The property owner',),
        ],
      ),
      sizedboxheight(10.0),
      Row(
        children: [
          Icon(Icons.brightness_1_outlined,color: colorredlight),
          sizedboxwidth(5.0),
          Text('A real agency / company',),
        ],
      ),
      sizedboxheight(10.0),
    ],
  );
}

Widget publishBtn(BuildContext context,) {
  return Button(
    buttonName: 'Publish AD',
    // key: Key('login_submit'),
    onPressed: () {
      Get.to(Createlisting2());
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
      // if (formKey.currentState.validate()) {
      //   model.signInsubmit(context);
      // } else {
      //   model.toggleautovalidate();
      // }
    },
  );
}