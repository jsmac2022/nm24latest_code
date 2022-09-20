import 'package:flutter/cupertino.dart';

import 'multiselectboxmodel.dart';

class LookingconsultantModelPage extends ChangeNotifier {
  List<MultiselectCheckbox> favmovie = [
    MultiselectCheckbox(title: 'Save taxes',subtitle: '', isSelect: false),
    MultiselectCheckbox(title: 'Property insurance',subtitle: 'Car insurance, household effects and personal liability', isSelect: false),
    MultiselectCheckbox(title: 'Prevention',subtitle: 'Life insurance - investment insurance', isSelect: false),
    MultiselectCheckbox(title: 'Rental deposit insurance',subtitle: '', isSelect: false),
    MultiselectCheckbox(title: 'General advice',subtitle: '', isSelect: false),
    MultiselectCheckbox(title: 'Credit',subtitle: '', isSelect: false),
  ];
  List selectmulti = [];

  toggleCheckbox(index) {
    favmovie[index].isSelect = !favmovie[index].isSelect;
    notifyListeners();
    if (favmovie[index].isSelect == true) {
      selectmulti.add(favmovie[index].title);
       notifyListeners();
    } else {
      selectmulti.remove(favmovie[index].title);
       notifyListeners();
    }
  }
}
