// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';
import 'filtterscreenpage.dart';

Widget appbar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 35,
          height: 35,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black45,
            ),
          ),
        ),
      ),
      Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
        ),
      ),
      Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 35,
          height: 35,
          child: Icon(
            Icons.list,
            color: Colors.black45,
          ),
        ),
      ),
    ],
  );
}

Widget selectdate(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(
        onTap: () {
          model.selectDate(context);
        },
        child: SizedBox(
          width: deviceWidth(context, 0.9),
          child: AllInputDesign(
            textInputAction: TextInputAction.next,
            enabledBorderRadius: borderRadiuscircular(30.0),
            fillColor: colorgreyblack,
            key: Key("dob"),
            enabled: false,
            labelText: model.gettext(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: 'DD-MM-YYYY',
            prefixIcon: Icon(
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

Widget propertytyperowwidget(context, model) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CustomRadioButton(
        enableShape: true,
        enableButtonWrap: true,
        radius: 40,
        width: 80,
        shapeRadius: 40,
        height: 33,
        elevation: 0,
        radioButtonValue: (value) {
          model.togglepropertytype(value);
        },
        buttonValues: ["All", "Rent", "For Sale"],
        buttonLables: ["All", "Rent", "For Sale"],
        selectedColor: colorredlight,
        selectedBorderColor: colorredlight,
        unSelectedBorderColor: colorgreylight,
        unSelectedColor: colorgreylight,
        buttonTextStyle: ButtonTextStyle(
            selectedColor: colorWhite,
            unSelectedColor: colorblack,
            textStyle: TextStyle(fontSize: 14)),
      ),
    ],
  );
}

Widget propertypricerange(context, model) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CustomRadioButton(
        enableShape: true,
        enableButtonWrap: true,
        radius: 40,
        width: 100,
        shapeRadius: 40,
        height: 33,
        elevation: 0,
        radioButtonValue: (value) {
          model.toggleselectpropertypricerange(value);
        },
        buttonValues: ["All", "Monthly", "Annually"],
        buttonLables: ["All", "Monthly", "Annually"],
        selectedColor: colorredlight,
        selectedBorderColor: colorredlight,
        unSelectedBorderColor: colorgreylight,
        unSelectedColor: colorgreylight,
        buttonTextStyle: ButtonTextStyle(
            selectedColor: colorWhite,
            unSelectedColor: colorblack,
            textStyle: TextStyle(fontSize: 14)),
      ),
    ],
  );
}

Widget multiselect(_items, _selectedAnimals4) {
  return StatefulBuilder(builder: (context, setState) {
    return MultiSelectChipField(
      title: Text(
        "Object Categories",
        style: textstyleHeading2(context)!
            .copyWith(fontWeight: fontWeight900, fontSize: 16),
      ),
      textStyle: textstyleHeading3(context),
      scroll: false,
      items: _items,
      initialValue: [],
      chipShape: StadiumBorder(side: BorderSide(color: colorgreylight)),
      headerColor: Colors.white.withOpacity(0.5),
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.8),
          ),
      chipColor: colorgreylight,
      selectedChipColor: colorredlight,
      selectedTextStyle: TextStyle(color: Colors.white, fontSize: 14),
      onTap: (values) {
        setState(() {
          _selectedAnimals4 = values;
        });
      },
    );
  });
}

Widget roomcounter(context, model) {
  return ListView.builder(
      itemCount: model.counterlist.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model.counterlist[index].countername,
              style:
                  textstyletitleHeading6(context)!.copyWith(color: Colors.grey),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      model.toggledeccounter(index);
                    },
                    icon: Icon(Icons.remove_circle_outline)),
                Text(model.counterlist[index].counter.toString()),
                IconButton(
                    onPressed: () {
                      model.toggleinccounter(index);
                    },
                    icon: Icon(Icons.add_circle_outline))
              ],
            )
          ],
        );
      });
}

Widget restartallbtn(context) {
  return SizedBox(
    height: 100,
    width: MediaQuery.of(context).size.height,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.restart_alt_rounded,
                color: colorskyblue,
              ),
              Text(
                'Reset all',
                style: textstyletitleHeading6(context),
              )
            ],
          ),
        ),
        showresultbtn(context)
      ],
    ),
  );
}

Widget showresultbtn(context) {
  return Button(
    onPressed: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FiltterPage()));
    },
    btnWidth: deviceWidth(context, 0.4),
    buttonName: 'Show results',
    borderRadius: borderRadiuscircular(28.0),
    borderColor: colorredlight,
    btnfontsize: 15,
    btnHeight: 40,
  );
}
