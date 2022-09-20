// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/service/health%20insurance/healthinsurancepage.dart';
import 'package:nm24/service/servicewidgetpage.dart';

import '../nodatafoundpage.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: appbarbackbutton(context, 'Service'),
          body: SingleChildScrollView(
              child: Column(
            children: [
              // sizedboxheight(deviceheight(context, 0.1)),
              carinsurance(context, 'assets/icons/car.png', 'Car Insurance', Nodatafound()),
              carinsurance(context, 'assets/icons/health.png', 'Health Insurance', HealthInsurancePage()),
              carinsurance(context, 'assets/icons/ac.png', 'AC Service & Repair', Nodatafound()),
              carinsurance(context, 'assets/icons/electric.png', 'Electric', Nodatafound()),
              carinsurance(context, 'assets/icons/cleaning.png', 'Cleaning', Nodatafound()),
              carinsurance(context, 'assets/icons/painting.png', 'Home Painting', Nodatafound()),
              carinsurance(context, 'assets/icons/applince.png', 'Appliance Repair', Nodatafound()),
            ],
          )),
        ),
      bgplaceholder()
      ],
    );
  }
}
