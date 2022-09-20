// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/commonwidgets/toast.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/formtextfield/validations_field.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/forgetpass/enter%20email%20page1/forgetpass.dart';
import 'package:nm24/forgetpass/verify%20otp%20page2/otpveryfypage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/route_manager.dart';

Widget titlesubtitlecontainer(context, heading, title) {
  return SizedBox(
    height: 70,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(heading, style: textstyleHeading1(context)), Text(title, style: textstyleHeading2(context))],
    ),
  );
}

Widget loginemail(model) {
  return AllInputDesign(
    key: Key("email1"),
    hintText: 'Email',
    controller: model.loginEmail,
    autofillHints: [AutofillHints.email],
    textInputAction: TextInputAction.next,
    prefixIcon: Image(image: AssetImage('assets/icons/email.png')),
    keyBoardType: TextInputType.text,
    validatorFieldValue: 'email',
    validator: validateEmailField,
  );
}

Widget loginPassword(model) {
  return AllInputDesign(
    key: Key("password11"),
    obsecureText: model.obscuretext,
    fillColor: colorWhite,
    hintText: 'Password',
    textInputAction: TextInputAction.done,
    autofillHints: [AutofillHints.password],
    controller: model.loginPassword,
    // onEditingComplete: ()=>TextInput.finishAutofillContext(),
    prefixIcon: Image(image: AssetImage('assets/icons/Lock.png')),
    suffixIcon: IconButton(
      key: Key('password_visibility'),
      onPressed: () {
        model.toggle();
      },
      icon: Icon(Icons.visibility, size: 20.0, color: model.isTapVissible ? colorredlight :Colors.black45 ),
    ),
    validatorFieldValue: 'password',
    validator: validaterequired,
    keyBoardType: TextInputType.emailAddress,
  );
}

Widget forgetpassword(context) {
  return Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () async {
        Get.to(() => ForgetPassPage());
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassPage()));
      },
      child: Text(
        'Forget Password ?',
        style: textstyleHeading3(context),
      ),
    ),
  );
}

Widget loginBtn(BuildContext context, model,formKey1) {
  return Button(
    buttonName: 'Sign In',
    key: Key('login_submi'),
    onPressed: () async {
      if (formKey1.currentState.validate()) {
        model.signInsubmit(context);
      } else {
       // model.toggleautovalidate();
        showFlutterToast('please fill all fields');
      }

    },
  );
}



Widget fbboxbtn1() {
  return Container(
      width: 55, height: 50,
      decoration:
          BoxDecoration(color: colorWhite, borderRadius: BorderRadius.circular(8), border: borderCustom(), boxShadow:
      boxShadowcontainer()
      ),
      child: MaterialButton(
          onPressed: () {},
          child: Image(
            image: AssetImage('assets/icons/fb.png'),
            color: Colors.blueAccent,
          )
      )
   );
}

Widget googleboxbtn2(context) {
  return Container(
      width: 55,
      height: 50,
      decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(8),
          border: borderCustom(),
          boxShadow: boxShadowcontainer(),
        ),
        child: MaterialButton(
            onPressed: () async {},
            child: Image(
              image: AssetImage('assets/icons/google.png'),
              color: Colors.blueAccent,
            )
        )
    );
}

Widget boxbtn3() {
  return Container(
    width: 55,
    height: 50,
    decoration:
        BoxDecoration(color: colorWhite, borderRadius: BorderRadius.circular(8), border: borderCustom(), boxShadow: 
     boxShadowcontainer(),
    ),
    child: MaterialButton(
        onPressed: () {
          // Get.to(SignupPage());
        },
        child: Image(
          image: AssetImage('assets/icons/twitter.png'),
          color: Colors.blueAccent,
        ),
      ),
  );
}

Widget continueAsGuest(context) {
  return Center(
    child: TextButton(
      onPressed: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.remove('login_user_id');
        await prefs.remove('user_type');
        prefs.setString('login_user_id', "'000'");
        prefs.setString(
          'user_type',
          "'1'",
        );
      },
      child: Text(
        'CONTINUE AS GUEST',
        style: textstyletitleHeading6(context),
      ),
    ),
  );
}

Widget allreadydonthaveanAccount(context, leadingtext, tralingtext, onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(leadingtext,
          style: textstyletitleHeading6(
            context,
          )),
      TextButton(
          onPressed: () async {
            await Future.delayed(Duration(milliseconds: 400));
            Get.to(onTap);
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onTap));
          },
          child: Text(
            tralingtext,
            style: textstyletitleHeading6(context)!.copyWith(color: colorskyblue, fontWeight: fontWeight600),
          ))
    ],
  );
}

Widget sininwithAccount(context, leadingtext,) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.28,
        height: 0.5,
        color: Colors.black38,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Text(leadingtext,
            style: textstyletitleHeading6(
              context,
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.28,
        height: 0.5,
        color: Colors.black38,
      ),
    ],
  );
}
