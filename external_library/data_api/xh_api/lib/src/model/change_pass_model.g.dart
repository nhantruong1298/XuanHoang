// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pass_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePassModel extends ChangePassModel {
  @override
  final String? newPassword;
  @override
  final String? retypePassword;

  factory _$ChangePassModel([void Function(ChangePassModelBuilder)? updates]) =>
      (new ChangePassModelBuilder()..update(updates)).build();

  _$ChangePassModel._({this.newPassword, this.retypePassword}) : super._();

  @override
  ChangePassModel rebuild(void Function(ChangePassModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePassModelBuilder toBuilder() =>
      new ChangePassModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePassModel &&
        newPassword == other.newPassword &&
        retypePassword == other.retypePassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, newPassword.hashCode), retypePassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangePassModel')
          ..add('newPassword', newPassword)
          ..add('retypePassword', retypePassword))
        .toString();
  }
}

class ChangePassModelBuilder
    implements Builder<ChangePassModel, ChangePassModelBuilder> {
  _$ChangePassModel? _$v;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _retypePassword;
  String? get retypePassword => _$this._retypePassword;
  set retypePassword(String? retypePassword) =>
      _$this._retypePassword = retypePassword;

  ChangePassModelBuilder() {
    ChangePassModel._defaults(this);
  }

  ChangePassModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPassword = $v.newPassword;
      _retypePassword = $v.retypePassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePassModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePassModel;
  }

  @override
  void update(void Function(ChangePassModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangePassModel build() {
    final _$result = _$v ??
        new _$ChangePassModel._(
            newPassword: newPassword, retypePassword: retypePassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
