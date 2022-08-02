// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewAccount extends NewAccount {
  @override
  final String? email;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? userName;
  @override
  final String? fullName;
  @override
  final String? password;
  @override
  final String? phoneNr;
  @override
  final String? mobileNr;
  @override
  final String? idRole;
  @override
  final bool? isBlocked;

  factory _$NewAccount([void Function(NewAccountBuilder)? updates]) =>
      (new NewAccountBuilder()..update(updates)).build();

  _$NewAccount._(
      {this.email,
      this.lastName,
      this.firstName,
      this.userName,
      this.fullName,
      this.password,
      this.phoneNr,
      this.mobileNr,
      this.idRole,
      this.isBlocked})
      : super._();

  @override
  NewAccount rebuild(void Function(NewAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewAccountBuilder toBuilder() => new NewAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewAccount &&
        email == other.email &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        userName == other.userName &&
        fullName == other.fullName &&
        password == other.password &&
        phoneNr == other.phoneNr &&
        mobileNr == other.mobileNr &&
        idRole == other.idRole &&
        isBlocked == other.isBlocked;
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
                                    $jc($jc(0, email.hashCode),
                                        lastName.hashCode),
                                    firstName.hashCode),
                                userName.hashCode),
                            fullName.hashCode),
                        password.hashCode),
                    phoneNr.hashCode),
                mobileNr.hashCode),
            idRole.hashCode),
        isBlocked.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewAccount')
          ..add('email', email)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('userName', userName)
          ..add('fullName', fullName)
          ..add('password', password)
          ..add('phoneNr', phoneNr)
          ..add('mobileNr', mobileNr)
          ..add('idRole', idRole)
          ..add('isBlocked', isBlocked))
        .toString();
  }
}

class NewAccountBuilder implements Builder<NewAccount, NewAccountBuilder> {
  _$NewAccount? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _phoneNr;
  String? get phoneNr => _$this._phoneNr;
  set phoneNr(String? phoneNr) => _$this._phoneNr = phoneNr;

  String? _mobileNr;
  String? get mobileNr => _$this._mobileNr;
  set mobileNr(String? mobileNr) => _$this._mobileNr = mobileNr;

  String? _idRole;
  String? get idRole => _$this._idRole;
  set idRole(String? idRole) => _$this._idRole = idRole;

  bool? _isBlocked;
  bool? get isBlocked => _$this._isBlocked;
  set isBlocked(bool? isBlocked) => _$this._isBlocked = isBlocked;

  NewAccountBuilder() {
    NewAccount._defaults(this);
  }

  NewAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _userName = $v.userName;
      _fullName = $v.fullName;
      _password = $v.password;
      _phoneNr = $v.phoneNr;
      _mobileNr = $v.mobileNr;
      _idRole = $v.idRole;
      _isBlocked = $v.isBlocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewAccount;
  }

  @override
  void update(void Function(NewAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewAccount build() {
    final _$result = _$v ??
        new _$NewAccount._(
            email: email,
            lastName: lastName,
            firstName: firstName,
            userName: userName,
            fullName: fullName,
            password: password,
            phoneNr: phoneNr,
            mobileNr: mobileNr,
            idRole: idRole,
            isBlocked: isBlocked);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
