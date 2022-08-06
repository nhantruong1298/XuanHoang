// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_item_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingItemModel extends WorkingItemModel {
  @override
  final String? idWorkingItem;
  @override
  final String? idWorkingTerm;
  @override
  final String? itemName;
  @override
  final String? description;
  @override
  final String? idWorkingItemStatus;
  @override
  final String? isDeleted;

  factory _$WorkingItemModel(
          [void Function(WorkingItemModelBuilder)? updates]) =>
      (new WorkingItemModelBuilder()..update(updates)).build();

  _$WorkingItemModel._(
      {this.idWorkingItem,
      this.idWorkingTerm,
      this.itemName,
      this.description,
      this.idWorkingItemStatus,
      this.isDeleted})
      : super._();

  @override
  WorkingItemModel rebuild(void Function(WorkingItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingItemModelBuilder toBuilder() =>
      new WorkingItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingItemModel &&
        idWorkingItem == other.idWorkingItem &&
        idWorkingTerm == other.idWorkingTerm &&
        itemName == other.itemName &&
        description == other.description &&
        idWorkingItemStatus == other.idWorkingItemStatus &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idWorkingItem.hashCode), idWorkingTerm.hashCode),
                    itemName.hashCode),
                description.hashCode),
            idWorkingItemStatus.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkingItemModel')
          ..add('idWorkingItem', idWorkingItem)
          ..add('idWorkingTerm', idWorkingTerm)
          ..add('itemName', itemName)
          ..add('description', description)
          ..add('idWorkingItemStatus', idWorkingItemStatus)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class WorkingItemModelBuilder
    implements Builder<WorkingItemModel, WorkingItemModelBuilder> {
  _$WorkingItemModel? _$v;

  String? _idWorkingItem;
  String? get idWorkingItem => _$this._idWorkingItem;
  set idWorkingItem(String? idWorkingItem) =>
      _$this._idWorkingItem = idWorkingItem;

  String? _idWorkingTerm;
  String? get idWorkingTerm => _$this._idWorkingTerm;
  set idWorkingTerm(String? idWorkingTerm) =>
      _$this._idWorkingTerm = idWorkingTerm;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _idWorkingItemStatus;
  String? get idWorkingItemStatus => _$this._idWorkingItemStatus;
  set idWorkingItemStatus(String? idWorkingItemStatus) =>
      _$this._idWorkingItemStatus = idWorkingItemStatus;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  WorkingItemModelBuilder() {
    WorkingItemModel._defaults(this);
  }

  WorkingItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idWorkingItem = $v.idWorkingItem;
      _idWorkingTerm = $v.idWorkingTerm;
      _itemName = $v.itemName;
      _description = $v.description;
      _idWorkingItemStatus = $v.idWorkingItemStatus;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkingItemModel;
  }

  @override
  void update(void Function(WorkingItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkingItemModel build() {
    final _$result = _$v ??
        new _$WorkingItemModel._(
            idWorkingItem: idWorkingItem,
            idWorkingTerm: idWorkingTerm,
            itemName: itemName,
            description: description,
            idWorkingItemStatus: idWorkingItemStatus,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
