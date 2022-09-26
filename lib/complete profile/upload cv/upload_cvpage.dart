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
      return WillPopScope(
        onWillPop: () {
          return onWillPop(context); //ProfilePage
        },
        child: Stack(
          children: [
            Scaffold(
              appBar: appbarbackbutton(context, 'YOUR CV'),
              body: Container(
                padding: const EdgeInsets.all(6.0),
                width: deviceWidth(context, 1.0),
                child: Consumer<UploadCVModelPage>(builder: (context, model, _) {
                  return SingleChildScrollView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       // sizedboxheight(5.0),
                        cvPage(context),
                      ],
                    ),
                  );
                }),
              ),
            ),
             // bgplaceholder()
          ],
        ),
      );
    });
  }
}