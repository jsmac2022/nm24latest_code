import 'package:flutter/material.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

import 'searchwidgetpage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              sizedboxheight(50.0),
              Container(
                child: searchtextfield(context),
              ),
            ],
          ),
        ),
         bgplaceholder()
      ],
    );
  }
}