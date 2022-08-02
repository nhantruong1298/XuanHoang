// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginInfo extends LoginInfo {
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? passwordHash;

  factory _$LoginInfo([void Function(LoginInfoBuilder)? updates]) =>
      (new LoginInfoBuilder()..update(updates)).build();

  _$LoginInfo._({this.username, this.password, this.passwordHash}) : super._();

  @override
  LoginInfo rebuild(void Function(LoginInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginInfoBuilder toBuilder() => new LoginInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginInfo &&
        username == other.username &&
        password == other.password &&
        passwordHash == other.passwordHash;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, username.hashCode), password.hashCode),
        passwordHash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginInfo')
          ..add('username', username)
          ..add('password', password)
          ..add('passwordHash', passwordHash))
        .toString();
  }
}

class LoginInfoBuilder implements Builder<LoginInfo, LoginInfoBuilder> {
  _$LoginInfo? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordHash;
  String? get passwordHash => _$this._passwordHash;
  set passwordHash(String? passwordHash) => _$this._passwordHash = passwordHash;

  LoginInfoBuilder() {
    LoginInfo._defaults(this);
  }

  LoginInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _passwordHash = $v.passwordHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginInfo;
  }

  @override
  void update(void Function(LoginInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginInfo build() {
    final _$result = _$v ??
        new _$LoginInfo._(
            username: username, password: password, passwordHash: passwordHash);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
