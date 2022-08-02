// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_forgot_password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountForgotPassword extends AccountForgotPassword {
  @override
  final String email;
  @override
  final String? idLogin;

  factory _$AccountForgotPassword(
          [void Function(AccountForgotPasswordBuilder)? updates]) =>
      (new AccountForgotPasswordBuilder()..update(updates)).build();

  _$AccountForgotPassword._({required this.email, this.idLogin}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, 'AccountForgotPassword', 'email');
  }

  @override
  AccountForgotPassword rebuild(
          void Function(AccountForgotPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountForgotPasswordBuilder toBuilder() =>
      new AccountForgotPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountForgotPassword &&
        email == other.email &&
        idLogin == other.idLogin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), idLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountForgotPassword')
          ..add('email', email)
          ..add('idLogin', idLogin))
        .toString();
  }
}

class AccountForgotPasswordBuilder
    implements Builder<AccountForgotPassword, AccountForgotPasswordBuilder> {
  _$AccountForgotPassword? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _idLogin;
  String? get idLogin => _$this._idLogin;
  set idLogin(String? idLogin) => _$this._idLogin = idLogin;

  AccountForgotPasswordBuilder() {
    AccountForgotPassword._defaults(this);
  }

  AccountForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _idLogin = $v.idLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountForgotPassword;
  }

  @override
  void update(void Function(AccountForgotPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountForgotPassword build() {
    final _$result = _$v ??
        new _$AccountForgotPassword._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'AccountForgotPassword', 'email'),
            idLogin: idLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
