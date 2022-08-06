// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseLoginModel extends ResponseLoginModel {
  @override
  final UserFromService? profile;
  @override
  final OAuthTokens? token;

  factory _$ResponseLoginModel(
          [void Function(ResponseLoginModelBuilder)? updates]) =>
      (new ResponseLoginModelBuilder()..update(updates)).build();

  _$ResponseLoginModel._({this.profile, this.token}) : super._();

  @override
  ResponseLoginModel rebuild(
          void Function(ResponseLoginModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseLoginModelBuilder toBuilder() =>
      new ResponseLoginModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseLoginModel &&
        profile == other.profile &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, profile.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResponseLoginModel')
          ..add('profile', profile)
          ..add('token', token))
        .toString();
  }
}

class ResponseLoginModelBuilder
    implements Builder<ResponseLoginModel, ResponseLoginModelBuilder> {
  _$ResponseLoginModel? _$v;

  UserFromServiceBuilder? _profile;
  UserFromServiceBuilder get profile =>
      _$this._profile ??= new UserFromServiceBuilder();
  set profile(UserFromServiceBuilder? profile) => _$this._profile = profile;

  OAuthTokensBuilder? _token;
  OAuthTokensBuilder get token => _$this._token ??= new OAuthTokensBuilder();
  set token(OAuthTokensBuilder? token) => _$this._token = token;

  ResponseLoginModelBuilder() {
    ResponseLoginModel._defaults(this);
  }

  ResponseLoginModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profile = $v.profile?.toBuilder();
      _token = $v.token?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseLoginModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseLoginModel;
  }

  @override
  void update(void Function(ResponseLoginModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponseLoginModel build() {
    _$ResponseLoginModel _$result;
    try {
      _$result = _$v ??
          new _$ResponseLoginModel._(
              profile: _profile?.build(), token: _token?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
        _$failedField = 'token';
        _token?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResponseLoginModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
