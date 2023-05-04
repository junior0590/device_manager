import 'package:flutter/foundation.dart';

import '../helpers/globaldata.dart';
import '../http_calls/auth_provider.dart';
import '../services/entity/user_data_response/user_data_response.dart';
import '../services/entity/verify_user_level_response/verify_user_level_response.dart';

class UserProfile with ChangeNotifier {
  UserData? _userProfile = UserData(avatar: "");
  VerifyUserLevelResponse? _userLevel = VerifyUserLevelResponse(
    isAdmin: 0,
    isMaster: 0,
    isUser: 0,
    status: 0,
    permissions: Permissions(
      create_proposals: 0,
      delete_proposals: 0,
      leads_map_access: 0,
      leads_map_create: 0,
    ),
  );

  UserData? get user {
    return _userProfile;
  }

  VerifyUserLevelResponse? get userLevel {
    return _userLevel;
  }

  set setUserLevel(VerifyUserLevelResponse userLevel) {
    _userLevel = userLevel;
    notifyListeners();
  }

  setUserProfile(UserData user) {
    _userProfile = UserData(
        avatar: user.avatar,
        full_name: user.full_name,
        first_name: user.first_name,
        last_name: user.last_name,
        home_phone: user.home_phone,
        mobile_phone: user.mobile_phone,
        street: user.street,
        state: user.state,
        city: user.city,
        zipcode: user.zipcode,
        date_of_birth: user.date_of_birth,
        leads_map_access: user.leads_map_access);
    notifyListeners();
  }

  updateProfileAvatar(String url) {
    _userProfile?.avatar = url;
    notifyListeners();
  }
}
