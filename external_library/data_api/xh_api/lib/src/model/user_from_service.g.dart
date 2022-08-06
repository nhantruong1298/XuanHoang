// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_from_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserFromService extends UserFromService {
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? newPassword;
  @override
  final String? retypePassword;
  @override
  final String? idLogin;
  @override
  final String? phoneNr;
  @override
  final String? mobileNr;
  @override
  final String? roleName;
  @override
  final int? accessTokenExpire;
  @override
  final String? loginPicture;
  @override
  final bool? isBlocked;
  @override
  final bool? isLoginActived;

  factory _$UserFromService([void Function(UserFromServiceBuilder)? updates]) =>
      (new UserFromServiceBuilder()..update(updates)).build();

  _$UserFromService._(
      {this.username,
      this.firstName,
      this.lastName,
      this.fullName,
      this.email,
      this.password,
      this.newPassword,
      this.retypePassword,
      this.idLogin,
      this.phoneNr,
      this.mobileNr,
      this.roleName,
      this.accessTokenExpire,
      this.loginPicture,
      this.isBlocked,
      this.isLoginActived})
      : super._();

  @override
  UserFromService rebuild(void Function(UserFromServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserFromServiceBuilder toBuilder() =>
      new UserFromServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserFromService &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        email == other.email &&
        password == other.password &&
        newPassword == other.newPassword &&
        retypePassword == other.retypePassword &&
        idLogin == other.idLogin &&
        phoneNr == other.phoneNr &&
        mobileNr == other.mobileNr &&
        roleName == other.roleName &&
        accessTokenExpire == other.accessTokenExpire &&
        loginPicture == other.loginPicture &&
        isBlocked == other.isBlocked &&
        isLoginActived == other.isLoginActived;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    username
                                                                        .hashCode),
                                                                firstName
                                                                    .hashCode),
                                                            lastName.hashCode),
                                                        fullName.hashCode),
                                                    email.hashCode),
                                                password.hashCode),
                                            newPassword.hashCode),
                                        retypePassword.hashCode),
                                    idLogin.hashCode),
                                phoneNr.hashCode),
                            mobileNr.hashCode),
                        roleName.hashCode),
                    accessTokenExpire.hashCode),
                loginPicture.hashCode),
            isBlocked.hashCode),
        isLoginActived.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserFromService')
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('password', password)
          ..add('newPassword', newPassword)
          ..add('retypePassword', retypePassword)
          ..add('idLogin', idLogin)
          ..add('phoneNr', phoneNr)
          ..add('mobileNr', mobileNr)
          ..add('roleName', roleName)
          ..add('accessTokenExpire', accessTokenExpire)
          ..add('loginPicture', loginPicture)
          ..add('isBlocked', isBlocked)
          ..add('isLoginActived', isLoginActived))
        .toString();
  }
}

class UserFromServiceBuilder
    implements Builder<UserFromService, UserFromServiceBuilder> {
  _$UserFromService? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _retypePassword;
  String? get retypePassword => _$this._retypePassword;
  set retypePassword(String? retypePassword) =>
      _$this._retypePassword = retypePassword;

  String? _idLogin;
  String? get idLogin => _$this._idLogin;
  set idLogin(String? idLogin) => _$this._idLogin = idLogin;

  String? _phoneNr;
  String? get phoneNr => _$this._phoneNr;
  set phoneNr(String? phoneNr) => _$this._phoneNr = phoneNr;

  String? _mobileNr;
  String? get mobileNr => _$this._mobileNr;
  set mobileNr(String? mobileNr) => _$this._mobileNr = mobileNr;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  int? _accessTokenExpire;
  int? get accessTokenExpire => _$this._accessTokenExpire;
  set accessTokenExpire(int? accessTokenExpire) =>
      _$this._accessTokenExpire = accessTokenExpire;

  String? _loginPicture;
  String? get loginPicture => _$this._loginPicture;
  set loginPicture(String? loginPicture) => _$this._loginPicture = loginPicture;

  bool? _isBlocked;
  bool? get isBlocked => _$this._isBlocked;
  set isBlocked(bool? isBlocked) => _$this._isBlocked = isBlocked;

  bool? _isLoginActived;
  bool? get isLoginActived => _$this._isLoginActived;
  set isLoginActived(bool? isLoginActived) =>
      _$this._isLoginActived = isLoginActived;

  UserFromServiceBuilder() {
    UserFromService._defaults(this);
  }

  UserFromServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _email = $v.email;
      _password = $v.password;
      _newPassword = $v.newPassword;
      _retypePassword = $v.retypePassword;
      _idLogin = $v.idLogin;
      _phoneNr = $v.phoneNr;
      _mobileNr = $v.mobileNr;
      _roleName = $v.roleName;
      _accessTokenExpire = $v.accessTokenExpire;
      _loginPicture = $v.loginPicture;
      _isBlocked = $v.isBlocked;
      _isLoginActived = $v.isLoginActived;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserFromService other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserFromService;
  }

  @override
  void update(void Function(UserFromServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserFromService build() {
    final _$result = _$v ??
        new _$UserFromService._(
            username: username,
            firstName: firstName,
            lastName: lastName,
            fullName: fullName,
            email: email,
            password: password,
            newPassword: newPassword,
            retypePassword: retypePassword,
            idLogin: idLogin,
            phoneNr: phoneNr,
            mobileNr: mobileNr,
            roleName: roleName,
            accessTokenExpire: accessTokenExpire,
            loginPicture: loginPicture,
            isBlocked: isBlocked,
            isLoginActived: isLoginActived);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
