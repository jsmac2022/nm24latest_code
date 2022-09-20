// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar_modelpage.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'porfilemodelpage.dart';
import 'profilewidgetpage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async {
          await Provider.of<BottomnavbarModelPage>(context, listen: false).togglebottomindexreset();
          Get.offAll(() => BottomNavBarPage());
          return false;
        },
        child: Stack(
          children: [
           
            Scaffold(
              //  extendBodyBehindAppBar: true,
              appBar: appbarbackbutton(context, 'Profile'),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Consumer<ProfileModelPage>(builder: (context, model, _) {
                  return SingleChildScrollView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      children: [
                        sizedboxheight(20.0),
                        profilepic(),
                        sizedboxheight(20.0),
                        profilefullname(),
                        sizedboxheight(20.0),
                        profileemail(),
                        sizedboxheight(20.0),
                        profilemobile(),
                        sizedboxheight(20.0),
                        languagedropdown(context, model),
                        sizedboxheight(20.0),
                        verifybtn(),
                      ],
                    ),
                  );
                }),
              ),
            ),
  bgplaceholder()
          ],
        ),
      ),
    );
  }
}
