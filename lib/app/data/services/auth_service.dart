import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/profile.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();
  late Profile? _profile;
  var _isLoggedIn = false.obs;

  bool get isLoggedInValue => _isLoggedIn.value;

  Profile? get profile => _profile;

  String? get accountType {
    if (_profile != null) {
      final type = AccountType.items
          .firstWhereOrNull((type) => type == _profile?.idRole);
      return type;
    }
    return null;
  }

  void login(Profile profile) {
    _isLoggedIn.value = true;
    _profile = profile;
  }

  void logout() {
    _isLoggedIn.value = false;
    _profile = null;
  }
}
