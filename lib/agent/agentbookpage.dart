
import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';

import 'agentbookwidgetpage.dart';

class AgentBookPage extends StatelessWidget {
  const AgentBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarbackbutton(context, 'Agent'),
      body: SingleChildScrollView(child: Column(children: [agentbookwidget(context),],)),
    );
  }
}