// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';

Widget notifiListWidget(context, model) {
  return 
  // model.notificationListsignup.length == 0
  //     ? Center(child: Text('No Data Found'))
  //     :
       ListView.builder(
          // itemCount: model.notificationListsignup.length,
          itemCount: 5,
          shrinkWrap: true,
          // physics: AlwaysScrollableScrollPhysics(),
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                height: 70,
               
                decoration: BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.circular(16),
                  border: borderCustomlight(),
                  boxShadow:boxShadowcontainer(),
                ),
                child: Center(
                  child: ListTile(
                    onTap: (){
                      
                        //  showCapturedWidgetPost(context, model.postsIndex);
                         showCapturedWidgetPost(context, model.postsIndex);
                    },
                    minLeadingWidth: 5,
                    leading: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image(image: AssetImage('assets/icons/not1.png')),
                    ),
                    title: Text(
                      // model.notificationListsignup[index]['message'].toString(),
                     'The new notification offer',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 15),
                    ),
                    trailing: Container(
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Text(
                        // model.notificationListsignup[index]['currents_date'].toString(),
                        '20-11-2021',
                        style: textstylesubtitle2(context)!.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ));
          });
}

void showCapturedWidgetPost(context, postsIndex) async {
  // print('dilogindex $postsIndex');
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      // title: Text(postsIndex['title'].toString()),
      // content: Text(postsIndex['body'].toString()),
      title: Text('Your notification'),
      content: Text('Your notification body '),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("okay"),
        ),
      ],
    ),
  );
}


