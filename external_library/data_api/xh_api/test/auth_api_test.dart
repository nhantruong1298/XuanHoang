import 'package:test/test.dart';
import 'package:xh_api/xh_api.dart';


/// tests for AuthApi
void main() {
  final instance = XhApi().getAuthApi();

  group(AuthApi, () {
    //Future apiAuthChangeStatusUserPost({ UserInfo userInfo }) async
    test('test apiAuthChangeStatusUserPost', () async {
      // TODO
    });

    //Future apiAuthLoginByUserIdGet({ String idLogin }) async
    test('test apiAuthLoginByUserIdGet', () async {
      // TODO
    });

    //Future apiAuthLoginPost({ LoginInfo loginInfo }) async
    test('test apiAuthLoginPost', () async {
      // TODO
    });

    //Future apiAuthPasswordChangePost({ BuiltMap<String, JsonObject> requestBody }) async
    test('test apiAuthPasswordChangePost', () async {
      // TODO
    });

    //Future apiAuthPasswordForgotPost({ AccountForgotPassword accountForgotPassword }) async
    test('test apiAuthPasswordForgotPost', () async {
      // TODO
    });

    //Future apiAuthPasswordResendEmailNewPost({ SignUpAccount signUpAccount }) async
    test('test apiAuthPasswordResendEmailNewPost', () async {
      // TODO
    });

    //Future apiAuthPasswordResetPost({ BuiltMap<String, JsonObject> requestBody }) async
    test('test apiAuthPasswordResetPost', () async {
      // TODO
    });

    //Future apiAuthRefreshtokenPost() async
    test('test apiAuthRefreshtokenPost', () async {
      // TODO
    });

    //Future apiAuthResendActivateEmailPost({ AccountForgotPassword accountForgotPassword }) async
    test('test apiAuthResendActivateEmailPost', () async {
      // TODO
    });

    //Future apiAuthUserPost({ NewAccount newAccount }) async
    test('test apiAuthUserPost', () async {
      // TODO
    });

  });
}
