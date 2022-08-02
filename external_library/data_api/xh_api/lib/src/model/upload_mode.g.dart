// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UploadMode _$number0 = const UploadMode._('number0');
const UploadMode _$number1 = const UploadMode._('number1');
const UploadMode _$number2 = const UploadMode._('number2');
const UploadMode _$number3 = const UploadMode._('number3');
const UploadMode _$number4 = const UploadMode._('number4');
const UploadMode _$number5 = const UploadMode._('number5');
const UploadMode _$number6 = const UploadMode._('number6');
const UploadMode _$number7 = const UploadMode._('number7');
const UploadMode _$number8 = const UploadMode._('number8');
const UploadMode _$number9 = const UploadMode._('number9');
const UploadMode _$number10 = const UploadMode._('number10');
const UploadMode _$number11 = const UploadMode._('number11');
const UploadMode _$number12 = const UploadMode._('number12');
const UploadMode _$number13 = const UploadMode._('number13');
const UploadMode _$number14 = const UploadMode._('number14');

UploadMode _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    case 'number2':
      return _$number2;
    case 'number3':
      return _$number3;
    case 'number4':
      return _$number4;
    case 'number5':
      return _$number5;
    case 'number6':
      return _$number6;
    case 'number7':
      return _$number7;
    case 'number8':
      return _$number8;
    case 'number9':
      return _$number9;
    case 'number10':
      return _$number10;
    case 'number11':
      return _$number11;
    case 'number12':
      return _$number12;
    case 'number13':
      return _$number13;
    case 'number14':
      return _$number14;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UploadMode> _$values =
    new BuiltSet<UploadMode>(const <UploadMode>[
  _$number0,
  _$number1,
  _$number2,
  _$number3,
  _$number4,
  _$number5,
  _$number6,
  _$number7,
  _$number8,
  _$number9,
  _$number10,
  _$number11,
  _$number12,
  _$number13,
  _$number14,
]);

class _$UploadModeMeta {
  const _$UploadModeMeta();
  UploadMode get number0 => _$number0;
  UploadMode get number1 => _$number1;
  UploadMode get number2 => _$number2;
  UploadMode get number3 => _$number3;
  UploadMode get number4 => _$number4;
  UploadMode get number5 => _$number5;
  UploadMode get number6 => _$number6;
  UploadMode get number7 => _$number7;
  UploadMode get number8 => _$number8;
  UploadMode get number9 => _$number9;
  UploadMode get number10 => _$number10;
  UploadMode get number11 => _$number11;
  UploadMode get number12 => _$number12;
  UploadMode get number13 => _$number13;
  UploadMode get number14 => _$number14;
  UploadMode valueOf(String name) => _$valueOf(name);
  BuiltSet<UploadMode> get values => _$values;
}

abstract class _$UploadModeMixin {
  // ignore: non_constant_identifier_names
  _$UploadModeMeta get UploadMode => const _$UploadModeMeta();
}

Serializer<UploadMode> _$uploadModeSerializer = new _$UploadModeSerializer();

class _$UploadModeSerializer implements PrimitiveSerializer<UploadMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
    'number3': 3,
    'number4': 4,
    'number5': 5,
    'number6': 6,
    'number7': 7,
    'number8': 8,
    'number9': 9,
    'number10': 10,
    'number11': 11,
    'number12': 12,
    'number13': 13,
    'number14': 14,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
    3: 'number3',
    4: 'number4',
    5: 'number5',
    6: 'number6',
    7: 'number7',
    8: 'number8',
    9: 'number9',
    10: 'number10',
    11: 'number11',
    12: 'number12',
    13: 'number13',
    14: 'number14',
  };

  @override
  final Iterable<Type> types = const <Type>[UploadMode];
  @override
  final String wireName = 'UploadMode';

  @override
  Object serialize(Serializers serializers, UploadMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UploadMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UploadMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
