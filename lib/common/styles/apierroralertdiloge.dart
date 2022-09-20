

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'const.dart';

apiErrorAlertdialog(context,messages){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title:  Text('Message'),
            content: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                ),
                sizedboxwidth(5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        messages,
                        textAlign: TextAlign.left,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text(
                  "OK",
                  style: TextStyle(color: colorWhite),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
  }


 