// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/appbar/appbardashboard.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/drawer/drawer.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/dashboard/dashboardwidgetpage.dart';
import 'package:nm24/map/mappage.dart';
import 'package:provider/provider.dart';
import 'dashboardmodelpage.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final formKey = GlobalKey<FormState>();
  // late FirebaseMessaging messaging;

  // @override
  // void initState() {
  //   var list = Provider.of<DashboardModelPage>(context, listen: false);
  //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
  //     Future.delayed(Duration(milliseconds: 600));
  //     await list.getgeustLogin();
  //     await list.usertypefind();
  //     await list.dashboardAstrologerList(context);
  //         print('gest ${list.isGeustLoggedIn}');
  //     if (list.isGeustLoggedIn == false) {
  //       print('gest ${list.isGeustLoggedIn}');
  //       list.dashboardprofileview(context);

  //       // Provider.of<PlanModelPage>(context, listen: false).getLastplanexpiredate(context) ;
  //     }
  //   });
  // messaging = FirebaseMessaging.instance;
  // messaging.getToken().then((value) {
  //   print('Token.....   $value');
  // });

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
  //   RemoteNotification? notification = message.notification;
  //   AndroidNotification? android = message.notification?.android;
  //   if (notification != null && android != null) {
  //     if (notification.body == 'You have audio call now' || notification.body == 'You have vedio call now') {
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => Incomincall(
  //                     calltype: notification.body.toString(),
  //                   )));
  //     }
  //     else {
  //       var appbarmodal =
  //           Provider.of<AppbarmodalPage>(context, listen: false);
  //       appbarmodal.incrementCounter();
  //     }
  //     var type = message.data['type'] ?? '';
  //     print('Token.....   $type');
  //   }
  // });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            // extendBodyBehindAppBar: true,
            appBar: appbarcustom(context),
            drawer: Drawercustom(),
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Consumer<DashboardModelPage>(builder: (context, model, _) {
                return MediaQuery(
                    data: mediaText(context),
                    child: SizedBox(
                      width: deviceWidth(context, 1.0),
                      height: deviceheight(context, 0.9),
                      child: SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                           
                            getSearchBar(context),
                            sizedboxheight(10.0),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: deviceWidth(context, 1.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Find your place in',
                                      style: textstylesubtitle1(context),
                                      textAlign: TextAlign.left,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => MapPage());
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: colorredlight,
                                          ),
                                          Text(
                                            'Land Street 51, switzerland ',
                                            style: TextStyle(fontSize: 22, fontWeight: fontWeight900),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_sharp,
                                            size: 30,
                                            color: colorblack,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),

                            horizontalList2(context,model),
                            cardTitleWidget(context, 'Top rated in Switzerland', 'See All', model),
                            horizontalList1(),
                            horizontalList2(context,model),
                            sizedboxheight(70.0),

                          ],
                        ),
                      ),
                    ));
                }
              ),
            )
          ),
          bgplaceholder()
      ],
    );
  }
}
