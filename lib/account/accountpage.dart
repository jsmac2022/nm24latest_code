

import 'package:flutter/material.dart';
import 'package:nm24/account/accountsettingmodelpage.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/login/loginpage.dart';
import 'package:nm24/nodatafoundpage.dart';
import 'package:provider/provider.dart';

import 'accountwidgetpage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbarbackbutton(context, 'Account'),
      body: SingleChildScrollView(child: Column(
        children: [
accountwidget(context,'assets/icons/setting.png','Settings',Nodatafound()),
accountwidget(context,'assets/icons/invite.png','Invite Friends',Nodatafound()),
accountwidget(context,'assets/icons/needhelp.png','Need Help?',Nodatafound()),
accountwidget(context,'assets/icons/spacehome.png','List your space',Nodatafound()),
accountwidget(context,'assets/icons/rateus.png','Rate us',Nodatafound()),
accountwidget(context,'assets/icons/billing.png','Billing',Nodatafound()),
accountwidget(context,'assets/icons/termc.png','Terms & Condition',Nodatafound()),
Consumer<AccountsettingModelPage>(
  builder: (context,model,_) {
    return     notificationSwitchSetting(context,model);
  }
),
accountwidget(context,'assets/icons/car.png','Switch to hosting',Nodatafound()),
accountwidget(context,'assets/icons/signout.png','Log out',LoginPage()),

        ],
      )),
    );
  }
}