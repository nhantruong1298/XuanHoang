// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpAccount extends SignUpAccount {
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? lastName;
  @override
  final String? firstName;
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
  @override
  final String? idProject;

  factory _$SignUpAccount([void Function(SignUpAccountBuilder)? updates]) =>
      (new SignUpAccountBuilder()..update(updates)).build();

  _$SignUpAccount._(
      {this.email,
      this.username,
      this.lastName,
      this.firstName,
      this.fullName,
      this.password,
      this.phoneNr,
      this.mobileNr,
      this.idRole,
      this.isBlocked,
      this.idProject})
      : super._();

  @override
  SignUpAccount rebuild(void Function(SignUpAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpAccountBuilder toBuilder() => new SignUpAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpAccount &&
        email == other.email &&
        username == other.username &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        fullName == other.fullName &&
        password == other.password &&
        phoneNr == other.phoneNr &&
        mobileNr == other.mobileNr &&
        idRole == other.idRole &&
        isBlocked == other.isBlocked &&
        idProject == other.idProject;
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
                                        $jc($jc(0, email.hashCode),
                                            username.hashCode),
                                        lastName.hashCode),
                                    firstName.hashCode),
                                fullName.hashCode),
                            password.hashCode),
                        phoneNr.hashCode),
                    mobileNr.hashCode),
                idRole.hashCode),
            isBlocked.hashCode),
        idProject.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpAccount')
          ..add('email', email)
          ..add('username', username)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('fullName', fullName)
          ..add('password', password)
          ..add('phoneNr', phoneNr)
          ..add('mobileNr', mobileNr)
          ..add('idRole', idRole)
          ..add('isBlocked', isBlocked)
          ..add('idProject', idProject))
        .toString();
  }
}

class SignUpAccountBuilder
    implements Builder<SignUpAccount, SignUpAccountBuilder> {
  _$SignUpAccount? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

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

  String? _idProject;
  String? get idProject => _$this._idProject;
  set idProject(String? idProject) => _$this._idProject = idProject;

  SignUpAccountBuilder() {
    SignUpAccount._defaults(this);
  }

  SignUpAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _username = $v.username;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _fullName = $v.fullName;
      _password = $v.password;
      _phoneNr = $v.phoneNr;
      _mobileNr = $v.mobileNr;
      _idRole = $v.idRole;
      _isBlocked = $v.isBlocked;
      _idProject = $v.idProject;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpAccount;
  }

  @override
  void update(void Function(SignUpAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpAccount build() {
    final _$result = _$v ??
        new _$SignUpAccount._(
            email: email,
            username: username,
            lastName: lastName,
            firstName: firstName,
            fullName: fullName,
            password: password,
            phoneNr: phoneNr,
            mobileNr: mobileNr,
            idRole: idRole,
            isBlocked: isBlocked,
            idProject: idProject);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
