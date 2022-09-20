// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'filtterscreenmodal.dart';
import 'filtterscreenwidget.dart';

class Categori {
  final int? id;
  final String? name;

  Categori({
    this.id,
    this.name,
  });
}

class FiltterPage extends StatefulWidget {
  const FiltterPage({Key? key}) : super(key: key);

  @override
  _FiltterPageState createState() => _FiltterPageState();
}

class _FiltterPageState extends State<FiltterPage> {
  // ignore: prefer_final_fields
  static List<Categori> _categori = [
    Categori(id: 1, name: "Any"),
    Categori(id: 2, name: "WiFi"),
    Categori(id: 3, name: "Self check in"),
    Categori(id: 4, name: "Kitchan"),
    Categori(id: 5, name: "Free parking"),
    Categori(id: 6, name: "Air condioner"),
    Categori(id: 7, name: "Security"),
  ];

  final _items = _categori
      .map((animal) => MultiSelectItem<Categori>(animal, animal.name!))
      .toList();

  List _selectedAnimals4 = [];

  @override
  void initState() {
    _selectedAnimals4 = _categori;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            child: Column(
              children: [
                sizedboxheight(25.0),
                appbar(context),
              ],
            ),
            preferredSize: Size.fromHeight(60.0),
          ),
          body: Consumer<FiltterModelPage>(builder: (context, model, _) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedboxheight(20.0),
                      Text('How long do you went to stay?',
                          style: textstyleHeading3(context)),
                      sizedboxheight(10.0),
                      selectdate(context, model),
                      sizedboxheight(15.0),
                      Text('Property type', style: textstyleHeading3(context)),
                      sizedboxheight(5.0),
                      propertytyperowwidget(context, model),
                      sizedboxheight(15.0),
                      Text('Price range', style: textstyleHeading3(context)),
                      sizedboxheight(5.0),
                      Text(
                        '€1,200 - €3,oo+ /  month',
                        style: textstyletitleHeading6(context),
                      ),
                      sizedboxheight(15.0),
                      SizedBox(
                        height: 100,
                        child: Image.asset(
                          'assets/images/Vector 1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      sizedboxheight(10.0),
                      propertypricerange(context, model),
                      sizedboxheight(20.0),
                      Text('Room and beds', style: textstyleHeading3(context)),
                      sizedboxheight(15.0),
                      roomcounter(context, model),
                      sizedboxheight(15.0),
                      multiselect(_items, _selectedAnimals4),
                      sizedboxheight(15.0),
                      restartallbtn(context),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
        bgplaceholder()
      ],
    );
  }
}
