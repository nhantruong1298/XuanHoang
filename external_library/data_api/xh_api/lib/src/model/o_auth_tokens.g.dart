// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuthTokens extends OAuthTokens {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;
  @override
  final String? expiresIn;
  @override
  final String? result;
  @override
  final String? message;
  @override
  final String? messageType;

  factory _$OAuthTokens([void Function(OAuthTokensBuilder)? updates]) =>
      (new OAuthTokensBuilder()..update(updates)).build();

  _$OAuthTokens._(
      {this.accessToken,
      this.refreshToken,
      this.tokenType,
      this.expiresIn,
      this.result,
      this.message,
      this.messageType})
      : super._();

  @override
  OAuthTokens rebuild(void Function(OAuthTokensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuthTokensBuilder toBuilder() => new OAuthTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuthTokens &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn &&
        result == other.result &&
        message == other.message &&
        messageType == other.messageType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, accessToken.hashCode),
                            refreshToken.hashCode),
                        tokenType.hashCode),
                    expiresIn.hashCode),
                result.hashCode),
            message.hashCode),
        messageType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OAuthTokens')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('tokenType', tokenType)
          ..add('expiresIn', expiresIn)
          ..add('result', result)
          ..add('message', message)
          ..add('messageType', messageType))
        .toString();
  }
}

class OAuthTokensBuilder implements Builder<OAuthTokens, OAuthTokensBuilder> {
  _$OAuthTokens? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _expiresIn;
  String? get expiresIn => _$this._expiresIn;
  set expiresIn(String? expiresIn) => _$this._expiresIn = expiresIn;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _messageType;
  String? get messageType => _$this._messageType;
  set messageType(String? messageType) => _$this._messageType = messageType;

  OAuthTokensBuilder() {
    OAuthTokens._defaults(this);
  }

  OAuthTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _tokenType = $v.tokenType;
      _expiresIn = $v.expiresIn;
      _result = $v.result;
      _message = $v.message;
      _messageType = $v.messageType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuthTokens other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OAuthTokens;
  }

  @override
  void update(void Function(OAuthTokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OAuthTokens build() {
    final _$result = _$v ??
        new _$OAuthTokens._(
            accessToken: accessToken,
            refreshToken: refreshToken,
            tokenType: tokenType,
            expiresIn: expiresIn,
            result: result,
            message: message,
            messageType: messageType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
