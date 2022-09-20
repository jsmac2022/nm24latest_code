// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:nm24/common/commonwidgets/button.dart';
// import 'package:nm24/common/styles/const.dart';
// import 'package:nm24/login/loginpage.dart';

// class ExploreSplashPage extends StatelessWidget {
//   const ExploreSplashPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Image.asset(
//               'assets/images/X - 384.png',
//               fit: BoxFit.fill,
//             ),
//           ),
//           Positioned(
//             bottom: 60,
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/image 170.png',
//                     fit: BoxFit.fill,
//                   ),
//                   sizedboxheight(20.0),
//                   Text(
//                     'YOUR DREAM HOME',
//                     style:
//                         textstyleHeading1(context)!.copyWith(color: colorblack),
//                   ),
//                   sizedboxheight(20.0),
//                   Text(
//                     'Lorem ipsum dolor sit amet, consectetur \n adipiscing  elit, magna aliqua. ',
//                     textAlign: TextAlign.center,
//                   ),
//                   sizedboxheight(20.0),
//                   ExploreSplashPagerBtn(
//                     context,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget ExploreSplashPagerBtn(
//     BuildContext context,
//   ) {
//     return Button(
//       btnWidth: 200,
//       buttonName: 'Explore',
//       onPressed: () {
//         Get.to(() => LoginPage());

//         //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>createlisting1()));
//         // if (formKey.currentState.validate()) {
//         //   model.signInsubmit(context);
//         // } else {
//         //   model.toggleautovalidate();
//         // }
//       },
//     );
//   }
// }
