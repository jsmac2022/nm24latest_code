// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/route_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nm24/chat/chat%20room/chatroom_page.dart';
import 'package:nm24/common/styles/const.dart';

// Widget getSearchBar(context) {
//   return Container(
//     height: 55,
//     padding: EdgeInsets.symmetric(horizontal: 5),
//     decoration: BoxDecoration(
//       color: colorWhite,
//       borderRadius: BorderRadius.circular(15),
//       border: Border.all(color: colorgreyblack.withOpacity(0.1)),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.1),
//           spreadRadius: 1,
//           blurRadius: 10,
//           offset: Offset(0, 3),
//         ),
//       ],
//     ),
//     child: Center(
//       child: TextField(
//         // enabled: false,
//         enabled: true,
//         textAlign: TextAlign.left,
//         decoration: InputDecoration(
//             // contentPadding: EdgeInsets.fromLTRB(15.0, 5.0, 0, 5.0),
//             border: new OutlineInputBorder(
//               borderRadius: const BorderRadius.all(
//                 const Radius.circular(15.0),
//               ),
//               borderSide: BorderSide(
//                 width: 0,
//                 style: BorderStyle.none,
//               ),
//             ),
//             isDense: true,
//             hintText: 'Search',
//             hintStyle: textstyletitleHeading6(context)!
//                 .copyWith(color: colorblack.withOpacity(0.5)),
//             fillColor: colorWhite,
//             filled: true,
//             prefixIcon: Icon(
//               Icons.search_rounded,
//               size: 28,
//             )),
//       ),
//     ),
//   );
// }

Widget recentchatlistWidget(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'All Chats',
        style: textstyletitleHeading6(context)!.copyWith(fontWeight: fontWeight900),
      ),
      MediaQuery.removePadding(
          context: context,
    removeTop: true,
        child: ListView.builder(
          
            physics: ScrollPhysics(),
            // itemCount: model.astrologerListdb.length,
            itemCount: 5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.14,
                child: GestureDetector(
                  onTap: () async {
                    Get.to(() => ChatRoomPage());
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoomPage()));
                    // final model1 = Provider.of<Chatlistmodelpage>(context, listen: false);
      
                    // await model1.toggelreseverid(model.astrologerListdb[index]['id']);
                    // await model1.toggelresevername(model.astrologerListdb[index]['name']);
                    // await model1.toggelreseverdiveiceid(model.astrologerListdb[index]['device_id']);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    padding: EdgeInsets.all(10.0),
                    width: deviceWidth(context, 1.0),
                    height: 70,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: colorgreyblack.withOpacity(0.1)),
                      boxShadow:boxShadowcontainer(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                  width: 42,
                                  height: 42,
                                  child: ClipOval(
                                    child:
                                        //  model.astrologerListdb[index]['profile_image'] != null
                                        //     ? Image.network(
                                        //         model.astrologerListdb[index]['image_url'].toString(),
                                        //         fit: BoxFit.cover,
                                        //         errorBuilder: (context, exception, stackTrack) =>Center(child: Text('Not \n found',textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)),
                                        //       )
                                        //     :
                                        Image(image: AssetImage('assets/images/user.png'), fit: BoxFit.contain),
      
                                    //     Image(
                                    //   image: AssetImage('assets/images/clip1.png'),
                                    //   fit: BoxFit.cover,
                                    // )
                                  ),
                                )
                              ],
                            ),
                            sizedboxwidth(8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    // model.astrologerListdb[index]['name'].toString(),
                                    'Aman sharma',
                                    style: Theme.of(context).textTheme.headline6),
                                sizedboxheight(6.0),
                                Row(
                                  children: [
                                    // Icon(
                                    //   Icons.done,
                                    //   size: 16,
                                    //   color: Colors.blue,
                                    // ),
                                    Icon(
                                      Icons.done_all,
                                      size: 18,
                                      color: Colors.blue,
                                    ),
                                    sizedboxwidth(5.0),
      
                                    Text(
                                        // model.astrologerListdb[index]['user_avability'].toString(),
                                        'hello how are you',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.subtitle2),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //      CircleAvatar(radius: 8,backgroundColor: Colors.red,
                        //        child: Text(recentChats[index].unreadCount!.toString(),textAlign: TextAlign.right,
                        //           style: textstylesubtitle2(context)!.copyWith(color: colorWhite,fontWeight: fontWeight900)),
                        //      ),
                        //     sizedboxheight(6.0),
                        //     Text(recentChats[index].time!,
                        //         style: textstylesubtitle1(context)),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                secondaryActions: <Widget>[
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(left: 9),
                    decoration: BoxDecoration(
                      color: HexColor('#ECEEFF'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/icons/fileicon.png'),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: HexColor('#FFE7E5'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // model.removeInlist(index);
                      },
                      icon: Image(
                        image: AssetImage('assets/icons/deleteicon.png'),
                        color: colorskyblue,
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    ],
  );
}
