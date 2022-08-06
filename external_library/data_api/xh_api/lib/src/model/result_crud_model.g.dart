// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_crud_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResultCRUDModel extends ResultCRUDModel {
  @override
  final String? returnId;
  @override
  final String? message;

  factory _$ResultCRUDModel([void Function(ResultCRUDModelBuilder)? updates]) =>
      (new ResultCRUDModelBuilder()..update(updates)).build();

  _$ResultCRUDModel._({this.returnId, this.message}) : super._();

  @override
  ResultCRUDModel rebuild(void Function(ResultCRUDModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultCRUDModelBuilder toBuilder() =>
      new ResultCRUDModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultCRUDModel &&
        returnId == other.returnId &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, returnId.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResultCRUDModel')
          ..add('returnId', returnId)
          ..add('message', message))
        .toString();
  }
}

class ResultCRUDModelBuilder
    implements Builder<ResultCRUDModel, ResultCRUDModelBuilder> {
  _$ResultCRUDModel? _$v;

  String? _returnId;
  String? get returnId => _$this._returnId;
  set returnId(String? returnId) => _$this._returnId = returnId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ResultCRUDModelBuilder() {
    ResultCRUDModel._defaults(this);
  }

  ResultCRUDModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnId = $v.returnId;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultCRUDModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultCRUDModel;
  }

  @override
  void update(void Function(ResultCRUDModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResultCRUDModel build() {
    final _$result =
        _$v ?? new _$ResultCRUDModel._(returnId: returnId, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
