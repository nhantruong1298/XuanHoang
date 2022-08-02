// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRoleUpdate extends UserRoleUpdate {
  @override
  final String? idLoginRolesLoginGw;
  @override
  final String? idLoginRoles;
  @override
  final bool? isBlocked;
  @override
  final bool? isDefault;
  @override
  final int? idLogin;

  factory _$UserRoleUpdate([void Function(UserRoleUpdateBuilder)? updates]) =>
      (new UserRoleUpdateBuilder()..update(updates)).build();

  _$UserRoleUpdate._(
      {this.idLoginRolesLoginGw,
      this.idLoginRoles,
      this.isBlocked,
      this.isDefault,
      this.idLogin})
      : super._();

  @override
  UserRoleUpdate rebuild(void Function(UserRoleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRoleUpdateBuilder toBuilder() =>
      new UserRoleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRoleUpdate &&
        idLoginRolesLoginGw == other.idLoginRolesLoginGw &&
        idLoginRoles == other.idLoginRoles &&
        isBlocked == other.isBlocked &&
        isDefault == other.isDefault &&
        idLogin == other.idLogin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, idLoginRolesLoginGw.hashCode),
                    idLoginRoles.hashCode),
                isBlocked.hashCode),
            isDefault.hashCode),
        idLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRoleUpdate')
          ..add('idLoginRolesLoginGw', idLoginRolesLoginGw)
          ..add('idLoginRoles', idLoginRoles)
          ..add('isBlocked', isBlocked)
          ..add('isDefault', isDefault)
          ..add('idLogin', idLogin))
        .toString();
  }
}

class UserRoleUpdateBuilder
    implements Builder<UserRoleUpdate, UserRoleUpdateBuilder> {
  _$UserRoleUpdate? _$v;

  String? _idLoginRolesLoginGw;
  String? get idLoginRolesLoginGw => _$this._idLoginRolesLoginGw;
  set idLoginRolesLoginGw(String? idLoginRolesLoginGw) =>
      _$this._idLoginRolesLoginGw = idLoginRolesLoginGw;

  String? _idLoginRoles;
  String? get idLoginRoles => _$this._idLoginRoles;
  set idLoginRoles(String? idLoginRoles) => _$this._idLoginRoles = idLoginRoles;

  bool? _isBlocked;
  bool? get isBlocked => _$this._isBlocked;
  set isBlocked(bool? isBlocked) => _$this._isBlocked = isBlocked;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  int? _idLogin;
  int? get idLogin => _$this._idLogin;
  set idLogin(int? idLogin) => _$this._idLogin = idLogin;

  UserRoleUpdateBuilder() {
    UserRoleUpdate._defaults(this);
  }

  UserRoleUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idLoginRolesLoginGw = $v.idLoginRolesLoginGw;
      _idLoginRoles = $v.idLoginRoles;
      _isBlocked = $v.isBlocked;
      _isDefault = $v.isDefault;
      _idLogin = $v.idLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRoleUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRoleUpdate;
  }

  @override
  void update(void Function(UserRoleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRoleUpdate build() {
    final _$result = _$v ??
        new _$UserRoleUpdate._(
            idLoginRolesLoginGw: idLoginRolesLoginGw,
            idLoginRoles: idLoginRoles,
            isBlocked: isBlocked,
            isDefault: isDefault,
            idLogin: idLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
