// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfo extends UserInfo {
  @override
  final String? idLogin;
  @override
  final String? idApplicationOwner;
  @override
  final String? email;
  @override
  final DateTime? emailSent;
  @override
  final String? company;
  @override
  final String? fullName;
  @override
  final String? initials;
  @override
  final bool? active;
  @override
  final bool? isLoginActived;
  @override
  final String? currentDateTime;
  @override
  final bool? setActiveButton;
  @override
  final String? idPerson;
  @override
  final String? encrypted;

  factory _$UserInfo([void Function(UserInfoBuilder)? updates]) =>
      (new UserInfoBuilder()..update(updates)).build();

  _$UserInfo._(
      {this.idLogin,
      this.idApplicationOwner,
      this.email,
      this.emailSent,
      this.company,
      this.fullName,
      this.initials,
      this.active,
      this.isLoginActived,
      this.currentDateTime,
      this.setActiveButton,
      this.idPerson,
      this.encrypted})
      : super._();

  @override
  UserInfo rebuild(void Function(UserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoBuilder toBuilder() => new UserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
        idLogin == other.idLogin &&
        idApplicationOwner == other.idApplicationOwner &&
        email == other.email &&
        emailSent == other.emailSent &&
        company == other.company &&
        fullName == other.fullName &&
        initials == other.initials &&
        active == other.active &&
        isLoginActived == other.isLoginActived &&
        currentDateTime == other.currentDateTime &&
        setActiveButton == other.setActiveButton &&
        idPerson == other.idPerson &&
        encrypted == other.encrypted;
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
                                                    $jc(0, idLogin.hashCode),
                                                    idApplicationOwner
                                                        .hashCode),
                                                email.hashCode),
                                            emailSent.hashCode),
                                        company.hashCode),
                                    fullName.hashCode),
                                initials.hashCode),
                            active.hashCode),
                        isLoginActived.hashCode),
                    currentDateTime.hashCode),
                setActiveButton.hashCode),
            idPerson.hashCode),
        encrypted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfo')
          ..add('idLogin', idLogin)
          ..add('idApplicationOwner', idApplicationOwner)
          ..add('email', email)
          ..add('emailSent', emailSent)
          ..add('company', company)
          ..add('fullName', fullName)
          ..add('initials', initials)
          ..add('active', active)
          ..add('isLoginActived', isLoginActived)
          ..add('currentDateTime', currentDateTime)
          ..add('setActiveButton', setActiveButton)
          ..add('idPerson', idPerson)
          ..add('encrypted', encrypted))
        .toString();
  }
}

class UserInfoBuilder implements Builder<UserInfo, UserInfoBuilder> {
  _$UserInfo? _$v;

  String? _idLogin;
  String? get idLogin => _$this._idLogin;
  set idLogin(String? idLogin) => _$this._idLogin = idLogin;

  String? _idApplicationOwner;
  String? get idApplicationOwner => _$this._idApplicationOwner;
  set idApplicationOwner(String? idApplicationOwner) =>
      _$this._idApplicationOwner = idApplicationOwner;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _emailSent;
  DateTime? get emailSent => _$this._emailSent;
  set emailSent(DateTime? emailSent) => _$this._emailSent = emailSent;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _initials;
  String? get initials => _$this._initials;
  set initials(String? initials) => _$this._initials = initials;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  bool? _isLoginActived;
  bool? get isLoginActived => _$this._isLoginActived;
  set isLoginActived(bool? isLoginActived) =>
      _$this._isLoginActived = isLoginActived;

  String? _currentDateTime;
  String? get currentDateTime => _$this._currentDateTime;
  set currentDateTime(String? currentDateTime) =>
      _$this._currentDateTime = currentDateTime;

  bool? _setActiveButton;
  bool? get setActiveButton => _$this._setActiveButton;
  set setActiveButton(bool? setActiveButton) =>
      _$this._setActiveButton = setActiveButton;

  String? _idPerson;
  String? get idPerson => _$this._idPerson;
  set idPerson(String? idPerson) => _$this._idPerson = idPerson;

  String? _encrypted;
  String? get encrypted => _$this._encrypted;
  set encrypted(String? encrypted) => _$this._encrypted = encrypted;

  UserInfoBuilder() {
    UserInfo._defaults(this);
  }

  UserInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idLogin = $v.idLogin;
      _idApplicationOwner = $v.idApplicationOwner;
      _email = $v.email;
      _emailSent = $v.emailSent;
      _company = $v.company;
      _fullName = $v.fullName;
      _initials = $v.initials;
      _active = $v.active;
      _isLoginActived = $v.isLoginActived;
      _currentDateTime = $v.currentDateTime;
      _setActiveButton = $v.setActiveButton;
      _idPerson = $v.idPerson;
      _encrypted = $v.encrypted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfo;
  }

  @override
  void update(void Function(UserInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfo build() {
    final _$result = _$v ??
        new _$UserInfo._(
            idLogin: idLogin,
            idApplicationOwner: idApplicationOwner,
            email: email,
            emailSent: emailSent,
            company: company,
            fullName: fullName,
            initials: initials,
            active: active,
            isLoginActived: isLoginActived,
            currentDateTime: currentDateTime,
            setActiveButton: setActiveButton,
            idPerson: idPerson,
            encrypted: encrypted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
