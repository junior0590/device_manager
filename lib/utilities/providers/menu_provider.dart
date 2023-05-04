import 'package:flutter/foundation.dart';

enum Menu { records, home, profile, chats, notifications, calendar, maps, managementReport, proposalToolCenter, aboutUs, createRecord  }

class MenuProvider with ChangeNotifier {

  Menu _selectedMenu = Menu.records;

  Menu get selectedMenu {

    return _selectedMenu;

  }

  set changeSelectedMenu(Menu menu) {

    _selectedMenu = menu;
    notifyListeners();

  }

}