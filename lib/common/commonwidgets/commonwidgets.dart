


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';


Widget bgplaceholder(){
  return    IgnorePointer(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 25),
              width: 200,
              height: 200,
              child: Image(image: AssetImage('assets/images/bg.png'), fit: BoxFit.contain),
            ),
          ),
        );
}


Widget headingperawidget(context,heading,pera) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(heading,
         style: textstyleHeading2(context)!.copyWith(fontSize: 20)),
      sizedboxheight(5.0),
      Text(pera,
          style: textstylesubtitle1(context))
    ],
  );
}

Future<bool> onWillPop(context) async {
  final showPopUp = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: Text('Are you sure'),
            content: Text('You want to leave from App'),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorskyblue,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorskyblue,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
            ],
          ));

  return showPopUp ?? false;
}

Future<bool> geustloginfirst(context) async {
  final showPopUp = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // title: Text('Are you sure'),
            content: Text('Please Register First'),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorskyblue,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () async {
                    // Get.to(() => LoginPage());

                  //   final bottompagemodel = Provider.of<BottomnavbarModelPage>(context, listen: false);
                  //   await bottompagemodel.togglebottomindexreset();
                  //   final dbmodel = Provider.of<DashboardModelPage>(context, listen: false);
                  //  await  dbmodel.geustloginfalse();
                  },
                  child: Text('ok')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colorskyblue,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
            ],
          ));

  return showPopUp ?? false;
}

// Widget logoImage(context) {
//   return Image.asset(
//     'assets/images/splash.png',
//     width: diviceWidth(context, 0.7),
//     height: 70,
//     fit: BoxFit.fill,
//   );
// }

Widget headingscustomwidget(context, heading) {
  return Text(heading, style: textstyleHeading1(context));
}

// Widget lockicon() {
//   return Container(
//     width: 100,
//     height: 100,
//     decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage('assets/images/circle.png'))),
//     child: Icon(
//       Icons.lock_outline,
//       size: 40,
//       color: colorWhite,
//     ),
//   );
// }

// Widget allreadydonthaveanAccount(context, leadingtext, tralingtext, onTap) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         leadingtext,
//         style: TextStyle(
//             color: colorblack, fontSize: fontsize18, fontWeight: fontWeight600),
//       ),
//       TextButton(
//           onPressed: () {
//             Navigator.pushReplacement(
//                 context, MaterialPageRoute(builder: (context) => onTap));
//           },
//           child: Text(tralingtext,
//               style: TextStyle(
//                   color: colorRed,
//                   fontWeight: fontWeight600,
//                   fontSize: fontsize18)))
//     ],
//   );
// }


void showPopup(BuildContext context, messageWidget) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.65),
    transitionDuration: Duration(milliseconds: 400),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(15.0),
          // height: 300,
          margin: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          decoration: BoxDecoration(
            color: colorWhite.withOpacity(0.9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: messageWidget ??
              SizedBox.expand(
                child: FlutterLogo(),
              ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(
          begin: Offset(0, 1),
          end: Offset(0, 0),
        ).animate(anim),
        child: child,
      );
    },
  );
}
