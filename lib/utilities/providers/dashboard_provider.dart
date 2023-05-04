import 'package:flutter/foundation.dart';
import '../http_calls/auth_provider.dart';
import '../services/entity/dashboard_data_response/dashboard_data_response.dart';

AuthProvider httpCalls = AuthProvider();

class DashboardProvider with ChangeNotifier {
  DashboardData? _dashboardData;
  List<ModuleDashboard> _modules = [];
  List<UserDashboard> _users = [UserDashboard(full_name: 'All', rec_id: 'all')];
  List<UserDashboard> _usersCopy = [UserDashboard(full_name: 'All', rec_id: 'all')];
  SelectedDashboardData _selectedDashboardData = SelectedDashboardData(module: 'leads', userId: 'all');
  bool _loadingDashboard = false;
  String _selectedModule = '';
  String _selectedUser = '';
  String _selectedUserLabel = '';
  String _changedUserId = '';
  String _changedModuleId = '';

  String get selectedModuleLabel {
    return _selectedUserLabel;
  }

  set setSelectedModuleLabel(String module) {
    _selectedUserLabel = module;
  }

  SelectedDashboardData get selectedDashboardData {
    return _selectedDashboardData;
  }

  set setSelectedDashboardData(SelectedDashboardData newData) {
    _selectedDashboardData.userId = newData.userId;
    _selectedDashboardData.module = newData.module;
  }

  String get selectedUser {
    return _selectedUser;
  }

  set setSelectedUser(String user) {
    _selectedUser = user;

    notifyListeners();
  }

  String get selectedModule {
    return _selectedModule;
  }

  set setSelectedModule(String module) {
    _selectedModule = module;
    notifyListeners();
  }

  DashboardData? get getDashboardData {
    return _dashboardData;
  }

  List<ModuleDashboard> get getModules {
    return _modules;
  }

  List<UserDashboard> get getUsers {
    return _users;
  }

  bool get loadingDashboard {
    return _loadingDashboard;
  }

  void resetUsers() {

    _users = [..._usersCopy];
    notifyListeners();

  }

  void setInitialValues() {
    _users.forEach((user) {
      if (user.rec_id == _changedUserId) {
        _selectedUserLabel = user.full_name!;
      }
    });

    _modules.forEach((module) {
      if (module.id.toString() == _changedModuleId) {
        _selectedModule = module.id.toString();
      }
    });

    notifyListeners();
  }

  void filterDashboardUsers(String value) {

    _users = [UserDashboard(full_name: 'All', rec_id: 'all')];

    notifyListeners();

    if(value.isNotEmpty) {

      _users = _usersCopy
          .where(
            (item) => item.full_name!.toLowerCase().contains(
          value.toString().toLowerCase(),
        ),
      )
          .toList();

    } else {

      _users = [..._usersCopy];

    }

    notifyListeners();

  }

}

class SelectedDashboardData {
  String? module;
  String? userId;

  SelectedDashboardData({this.module, this.userId});
}
