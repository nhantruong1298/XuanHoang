// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_check_image_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoCheckImageModel extends DoCheckImageModel {
  @override
  final String? idWorkingItem;
  @override
  final String? sessionId;
  @override
  final String? description;
  @override
  final String? picture;
  @override
  final String? idWorkingItemHistoryPicture;
  @override
  final String? isDeleted;

  factory _$DoCheckImageModel(
          [void Function(DoCheckImageModelBuilder)? updates]) =>
      (new DoCheckImageModelBuilder()..update(updates)).build();

  _$DoCheckImageModel._(
      {this.idWorkingItem,
      this.sessionId,
      this.description,
      this.picture,
      this.idWorkingItemHistoryPicture,
      this.isDeleted})
      : super._();

  @override
  DoCheckImageModel rebuild(void Function(DoCheckImageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCheckImageModelBuilder toBuilder() =>
      new DoCheckImageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCheckImageModel &&
        idWorkingItem == other.idWorkingItem &&
        sessionId == other.sessionId &&
        description == other.description &&
        picture == other.picture &&
        idWorkingItemHistoryPicture == other.idWorkingItemHistoryPicture &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idWorkingItem.hashCode), sessionId.hashCode),
                    description.hashCode),
                picture.hashCode),
            idWorkingItemHistoryPicture.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCheckImageModel')
          ..add('idWorkingItem', idWorkingItem)
          ..add('sessionId', sessionId)
          ..add('description', description)
          ..add('picture', picture)
          ..add('idWorkingItemHistoryPicture', idWorkingItemHistoryPicture)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class DoCheckImageModelBuilder
    implements Builder<DoCheckImageModel, DoCheckImageModelBuilder> {
  _$DoCheckImageModel? _$v;

  String? _idWorkingItem;
  String? get idWorkingItem => _$this._idWorkingItem;
  set idWorkingItem(String? idWorkingItem) =>
      _$this._idWorkingItem = idWorkingItem;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _idWorkingItemHistoryPicture;
  String? get idWorkingItemHistoryPicture =>
      _$this._idWorkingItemHistoryPicture;
  set idWorkingItemHistoryPicture(String? idWorkingItemHistoryPicture) =>
      _$this._idWorkingItemHistoryPicture = idWorkingItemHistoryPicture;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  DoCheckImageModelBuilder() {
    DoCheckImageModel._defaults(this);
  }

  DoCheckImageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idWorkingItem = $v.idWorkingItem;
      _sessionId = $v.sessionId;
      _description = $v.description;
      _picture = $v.picture;
      _idWorkingItemHistoryPicture = $v.idWorkingItemHistoryPicture;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCheckImageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCheckImageModel;
  }

  @override
  void update(void Function(DoCheckImageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCheckImageModel build() {
    final _$result = _$v ??
        new _$DoCheckImageModel._(
            idWorkingItem: idWorkingItem,
            sessionId: sessionId,
            description: description,
            picture: picture,
            idWorkingItemHistoryPicture: idWorkingItemHistoryPicture,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
