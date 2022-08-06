// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_check_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoCheckModel extends DoCheckModel {
  @override
  final String? idWorkingItem;
  @override
  final String? sessionId;
  @override
  final String? reason;
  @override
  final String? idWorkingItemStatus;
  @override
  final String? isDeleted;

  factory _$DoCheckModel([void Function(DoCheckModelBuilder)? updates]) =>
      (new DoCheckModelBuilder()..update(updates)).build();

  _$DoCheckModel._(
      {this.idWorkingItem,
      this.sessionId,
      this.reason,
      this.idWorkingItemStatus,
      this.isDeleted})
      : super._();

  @override
  DoCheckModel rebuild(void Function(DoCheckModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCheckModelBuilder toBuilder() => new DoCheckModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCheckModel &&
        idWorkingItem == other.idWorkingItem &&
        sessionId == other.sessionId &&
        reason == other.reason &&
        idWorkingItemStatus == other.idWorkingItemStatus &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idWorkingItem.hashCode), sessionId.hashCode),
                reason.hashCode),
            idWorkingItemStatus.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCheckModel')
          ..add('idWorkingItem', idWorkingItem)
          ..add('sessionId', sessionId)
          ..add('reason', reason)
          ..add('idWorkingItemStatus', idWorkingItemStatus)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class DoCheckModelBuilder
    implements Builder<DoCheckModel, DoCheckModelBuilder> {
  _$DoCheckModel? _$v;

  String? _idWorkingItem;
  String? get idWorkingItem => _$this._idWorkingItem;
  set idWorkingItem(String? idWorkingItem) =>
      _$this._idWorkingItem = idWorkingItem;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _idWorkingItemStatus;
  String? get idWorkingItemStatus => _$this._idWorkingItemStatus;
  set idWorkingItemStatus(String? idWorkingItemStatus) =>
      _$this._idWorkingItemStatus = idWorkingItemStatus;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  DoCheckModelBuilder() {
    DoCheckModel._defaults(this);
  }

  DoCheckModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idWorkingItem = $v.idWorkingItem;
      _sessionId = $v.sessionId;
      _reason = $v.reason;
      _idWorkingItemStatus = $v.idWorkingItemStatus;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCheckModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCheckModel;
  }

  @override
  void update(void Function(DoCheckModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCheckModel build() {
    final _$result = _$v ??
        new _$DoCheckModel._(
            idWorkingItem: idWorkingItem,
            sessionId: sessionId,
            reason: reason,
            idWorkingItemStatus: idWorkingItemStatus,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
