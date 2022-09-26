import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nm24/account/accountsettingmodelpage.dart';
import 'package:nm24/agent/bookmeating/bookmeetingmodelpage.dart';
import 'package:nm24/auth/twillio/twillio_modelpage.dart';
import 'package:nm24/chat/chatlist/chatlistmodelpage.dart';
import 'package:nm24/common/appbar/appbarmodal.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar_modelpage.dart';
import 'package:nm24/complete%20profile/completeprofilemodelpage.dart';
import 'package:nm24/complete%20profile/upload%20cv/uploadcv_modelpage.dart';
import 'package:nm24/dashboard/dashboardmodelpage.dart';
import 'package:nm24/dashboard/filtterscreen/filtterscreenmodal.dart';
import 'package:nm24/forgetpass/enter%20email%20page1/forgetpassmodelpage.dart';
import 'package:nm24/forgetpass/password%20change%20page3/changepassmodelpage.dart';
import 'package:nm24/forgetpass/verify%20otp%20page2/otpverifymodelpage.dart';
import 'package:nm24/looking%20for%20counsaltant/imintrestedpage.dart';
import 'package:nm24/login/loginmodelpage.dart';
import 'package:nm24/map/mapmodelpage.dart';
import 'package:nm24/notification/flutter_local_notification.dart';
import 'package:nm24/notification/notificationmodelpage.dart';
import 'package:nm24/profile/porfilemodelpage.dart';
import 'package:nm24/service/health%20insurance/healthinsurancemodelpage.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/nominiee/nomineemodelpage.dart';
import 'package:nm24/signup/signuppagemodel.dart';
import 'package:nm24/splash%20screen/splashpage.dart';
import 'package:provider/provider.dart';
import 'appform/dossieremodelpage.dart';
import 'common/styles/const.dart';
import 'looking for counsaltant/lokongconsultantmodelpage.dart';
import 'service/health insurance/insurance buy/insurencebuy form/insuranceformodelpage.dart';
import 'service/health insurance/insurance buy/insurencebuy form/policebazar/policebazamodelpage.dart';
import 'package:firebase_core/firebase_core.dart';

//when app terminate the notification massage reseve
Future<void> backGroundMessageHandler(RemoteMessage message) async {
  print('vvv app terminate ${message.data.toString()}');
  print('vvv app terminate ${message.notification!.title}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationService.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backGroundMessageHandler);

  runApp(
    MultiProvider(providers: [
       ChangeNotifierProvider(
          create: (context) => LoginModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => BottomnavbarModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => ForgetPassModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => ChangePassModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => AppbarmodalPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => DashboardModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => CompleteProfileModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => ProfileModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => NotificationModelPage(),
        ),
       ChangeNotifierProvider(
          create: (context) => Chatlistmodelpage(),
        ),
       ChangeNotifierProvider(
          create: (context) =>SignUpModelpage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>BookmeetingModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>HealthModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>InsuranceForModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>NomineeModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>PoliceModelPage() ,
        ),
  
       ChangeNotifierProvider(
          create: (context) =>DossierFormModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>AccountsettingModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>FiltterModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>MapModelPage() ,
        ),
       ChangeNotifierProvider(
          create: (context) =>LookingconsultantModelPage() ,
        ),
      ChangeNotifierProvider(
        create: (context) => TwillioModelPage(),
      ),
      ChangeNotifierProvider(
          create: (context) => OtpVerifyModelPage()
      ),
      ChangeNotifierProvider(create: (context) => UploadCVModelPage()
      ),
  
      ],child:const MyApp() ,)
    );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NM 24',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: colorWhite,
          primaryTextTheme: TextTheme(headline2: TextStyle(color: colorblack)),
          textTheme: TextTheme(
            headline1: TextStyle(
                color: colorskyblue,
                fontSize: fontsizeheading25,
                letterSpacing: 0.5,
                fontWeight: fontWeight700),
            headline6: TextStyle(
                color: colorblack,
                fontSize: fontsizetitle,
                letterSpacing: 0.5,
                fontWeight: fontWeight500),
            headline2: TextStyle(
              color: colorblack,
              fontSize: fontsizeheading22,
              letterSpacing: 0.5,
              fontWeight: fontWeight600,
            ),
            headline3: TextStyle(
              color: colorblack,
              fontSize: fontsizetitle,
              letterSpacing: 0.5,
              fontWeight: fontWeight900,
            ),
            subtitle1: TextStyle(
              color: Colors.black54,
              letterSpacing: 0.5,
              fontSize: 14,
            ),
            subtitle2: TextStyle(
              color: Colors.grey,
              letterSpacing: 0.5,
              fontSize: 12,
            ),
          ),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor:colorWhite,
            elevation: 0,
            // textTheme: TextTheme(
            //     bodyText1: TextStyle(color: colorblack, fontSize: 50))
           ),
  
          ),
   initialRoute: '/',
   routes: {
     '/':(context)=> const SplashPage (),
     '/a':(context)=>  BottomNavBarPage(),
     '/i':(context)=>  LookingForCounsaltantPage(),
       },
    );
  }
}
