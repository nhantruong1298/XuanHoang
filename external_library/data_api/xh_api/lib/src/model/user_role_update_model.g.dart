// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_update_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRoleUpdateModel extends UserRoleUpdateModel {
  @override
  final String? isSetDefaultRole;
  @override
  final BuiltList<UserRoleUpdate>? roles;

  factory _$UserRoleUpdateModel(
          [void Function(UserRoleUpdateModelBuilder)? updates]) =>
      (new UserRoleUpdateModelBuilder()..update(updates)).build();

  _$UserRoleUpdateModel._({this.isSetDefaultRole, this.roles}) : super._();

  @override
  UserRoleUpdateModel rebuild(
          void Function(UserRoleUpdateModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRoleUpdateModelBuilder toBuilder() =>
      new UserRoleUpdateModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRoleUpdateModel &&
        isSetDefaultRole == other.isSetDefaultRole &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isSetDefaultRole.hashCode), roles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRoleUpdateModel')
          ..add('isSetDefaultRole', isSetDefaultRole)
          ..add('roles', roles))
        .toString();
  }
}

class UserRoleUpdateModelBuilder
    implements Builder<UserRoleUpdateModel, UserRoleUpdateModelBuilder> {
  _$UserRoleUpdateModel? _$v;

  String? _isSetDefaultRole;
  String? get isSetDefaultRole => _$this._isSetDefaultRole;
  set isSetDefaultRole(String? isSetDefaultRole) =>
      _$this._isSetDefaultRole = isSetDefaultRole;

  ListBuilder<UserRoleUpdate>? _roles;
  ListBuilder<UserRoleUpdate> get roles =>
      _$this._roles ??= new ListBuilder<UserRoleUpdate>();
  set roles(ListBuilder<UserRoleUpdate>? roles) => _$this._roles = roles;

  UserRoleUpdateModelBuilder() {
    UserRoleUpdateModel._defaults(this);
  }

  UserRoleUpdateModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSetDefaultRole = $v.isSetDefaultRole;
      _roles = $v.roles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRoleUpdateModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRoleUpdateModel;
  }

  @override
  void update(void Function(UserRoleUpdateModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRoleUpdateModel build() {
    _$UserRoleUpdateModel _$result;
    try {
      _$result = _$v ??
          new _$UserRoleUpdateModel._(
              isSetDefaultRole: isSetDefaultRole, roles: _roles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserRoleUpdateModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
