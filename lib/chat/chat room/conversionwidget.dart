// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/chat/chatlist/chatlistmodelpage.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';

class ChatRoomConversionWidget extends StatefulWidget {
  const ChatRoomConversionWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatRoomConversionWidget> createState() => _ChatRoomConversionWidgetState();
}

class _ChatRoomConversionWidgetState extends State<ChatRoomConversionWidget> {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
  //     var list = Provider.of<Chatlistmodelpage>(context, listen: false);
  //         await list.chatUserList(context);
  //     await list.conversionlist();
   

  //     Future.delayed(Duration(seconds: 1));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<Chatlistmodelpage>(builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child:
            //  model.noChatFound
            //     ? Center(
            //         child: Text(
            //           'No Chat Found',
            //           style: textstyleHeading2(context),
            //         ),
            //       )
            //     : 
                ListView.builder(
                  
                    controller: model.scrollController,
                    shrinkWrap: true,
                    reverse: false,
                    // itemCount: model.chatconversiondata!.length,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      // bool isMe = model.chatconversiondata![index]['sender_id'] == model.ourSanderid;
                      bool isMe = false;
                      return Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  if (!isMe)
                                    SizedBox(
                                      width:30,height: 30,
                                      child: ClipOval(
                                        
                                  child:
                                    // model.chatconversiondata![index]['profile_image'] !=  null
                                    //     ? Image.network(
                                    //         model.chatconversiondata![index]['image_url'].toString(),
                                    //         fit: BoxFit.cover,
                                    //       )
                                    //     : 
                                        Image(image: AssetImage('assets/images/user.png'), fit: BoxFit.contain),

                
                                ),
                                    ),
                                  sizedboxwidth(7.0),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      constraints: BoxConstraints(maxWidth: deviceWidth(context, 0.7)),
                                      decoration: BoxDecoration(
                                          color: isMe ? coloryourchat : colorsanderchat,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                              bottomLeft: Radius.circular(isMe ? 12 : 0),
                                              bottomRight: Radius.circular(isMe ? 0 : 12))),
                                      child: Text(
                                        // model.chatconversiondata![index]['message'].toString(),
                                        'hello how are you',
                                        style: textstylesubtitle2(context)!.copyWith(
                                          color: isMe ? colorWhite : colorblack.withOpacity(0.8),
                                        ),
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                                  children: [
                                    if (!isMe) sizedboxwidth(40.0),
                                    Icon(
                                      Icons.done_all_rounded,
                                      size: 15,
                                      color: Colors.blueAccent,
                                    ),
                                    sizedboxwidth(8.0),
                                    Text(
                                      // model.chatconversiondata![index]['sent_date'].toString(),
                                     '5 min ago',
                                      style: textstylesubtitle2(context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                  ),
          ),
        );
      }),
    );
  }
}
