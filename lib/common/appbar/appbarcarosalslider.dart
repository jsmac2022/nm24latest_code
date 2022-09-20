// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

bool like = false;
Widget appbarcarosolslider() {
  return Padding(
    padding: EdgeInsets.only(top: 25, left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 33,
          width: 33,
          child: Icon(Icons.keyboard_backspace_sharp),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  like = !like;
                },
                icon: like == false
                    ? Icon(Icons.favorite_border, color: Colors.white)
                    : Icon(Icons.favorite, color: Colors.red)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
          ],
        )
      ],
    ),
  );
}
