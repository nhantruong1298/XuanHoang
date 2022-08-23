// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Xin chào`
  String get SIGN_IN__HELLO {
    return Intl.message(
      'Xin chào',
      name: 'SIGN_IN__HELLO',
      desc: '',
      args: [],
    );
  }

  /// `Mời đăng nhập vào hệ thống`
  String get SIGN_IN__PLEASE_LOGIN {
    return Intl.message(
      'Mời đăng nhập vào hệ thống',
      name: 'SIGN_IN__PLEASE_LOGIN',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập *`
  String get SIGN_IN__USERNAME {
    return Intl.message(
      'Tên đăng nhập *',
      name: 'SIGN_IN__USERNAME',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu *`
  String get SIGN_IN__PASSWORD {
    return Intl.message(
      'Mật khẩu *',
      name: 'SIGN_IN__PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get SIGN_IN__SIGN_IN_TEXT {
    return Intl.message(
      'Đăng nhập',
      name: 'SIGN_IN__SIGN_IN_TEXT',
      desc: '',
      args: [],
    );
  }

  /// `Bản quyền thuộc về Cty TNHH Xuân Hoàng`
  String get SIGN_IN__LICENSE_DESCRIPTION {
    return Intl.message(
      'Bản quyền thuộc về Cty TNHH Xuân Hoàng',
      name: 'SIGN_IN__LICENSE_DESCRIPTION',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi mật khẩu`
  String get RESET_PASSWORD__RESET_PASSWORD_TEXT {
    return Intl.message(
      'Thay đổi mật khẩu',
      name: 'RESET_PASSWORD__RESET_PASSWORD_TEXT',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu hiện tại*`
  String get RESET_PASSWORD__CURRENT_PASSWORD {
    return Intl.message(
      'Mật khẩu hiện tại*',
      name: 'RESET_PASSWORD__CURRENT_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới*`
  String get RESET_PASSWORD__NEW_PASSWORD {
    return Intl.message(
      'Mật khẩu mới*',
      name: 'RESET_PASSWORD__NEW_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu mới*`
  String get RESET_PASSWORD__RE_ENTER_NEW_PASSWORD {
    return Intl.message(
      'Nhập lại mật khẩu mới*',
      name: 'RESET_PASSWORD__RE_ENTER_NEW_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Chọn giai đoạn`
  String get CHOOSE_PROGRESS__CHOOSE_PROGRESS_TEXT {
    return Intl.message(
      'Chọn giai đoạn',
      name: 'CHOOSE_PROGRESS__CHOOSE_PROGRESS_TEXT',
      desc: '',
      args: [],
    );
  }

  /// `Chọn hạng mục`
  String get CHOOSE_CATEGORY__CHOOSE_CATEGORY_TEXT {
    return Intl.message(
      'Chọn hạng mục',
      name: 'CHOOSE_CATEGORY__CHOOSE_CATEGORY_TEXT',
      desc: '',
      args: [],
    );
  }

  /// `Xem ảnh`
  String get CHOOSE_IMAGE__LOOK_PHOTOS {
    return Intl.message(
      'Xem ảnh',
      name: 'CHOOSE_IMAGE__LOOK_PHOTOS',
      desc: '',
      args: [],
    );
  }

  /// `Chữ ký khách hàng`
  String get CREATE_SIGNATURE__USER_SIGNATURE {
    return Intl.message(
      'Chữ ký khách hàng',
      name: 'CREATE_SIGNATURE__USER_SIGNATURE',
      desc: '',
      args: [],
    );
  }

  /// `Họ tên khách hàng`
  String get CREATE_SIGNATURE__USER_FULL_NAME {
    return Intl.message(
      'Họ tên khách hàng',
      name: 'CREATE_SIGNATURE__USER_FULL_NAME',
      desc: '',
      args: [],
    );
  }

  /// `Lưu chữ ký`
  String get CREATE_SIGNATURE__SAVE_SIGNATURE {
    return Intl.message(
      'Lưu chữ ký',
      name: 'CREATE_SIGNATURE__SAVE_SIGNATURE',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo sự cố`
  String get CREATE_REPORT__REPORT_PROBLEM_ {
    return Intl.message(
      'Báo cáo sự cố',
      name: 'CREATE_REPORT__REPORT_PROBLEM_',
      desc: '',
      args: [],
    );
  }

  /// `Trả lời`
  String get EDIT_REPORT__REPLY {
    return Intl.message(
      'Trả lời',
      name: 'EDIT_REPORT__REPLY',
      desc: '',
      args: [],
    );
  }

  /// `Gửi trả lời`
  String get EDIT_REPORT__SEND {
    return Intl.message(
      'Gửi trả lời',
      name: 'EDIT_REPORT__SEND',
      desc: '',
      args: [],
    );
  }

  /// `Đang kiểm tra`
  String get EDIT_REPORT__CHECKING {
    return Intl.message(
      'Đang kiểm tra',
      name: 'EDIT_REPORT__CHECKING',
      desc: '',
      args: [],
    );
  }

  /// `Mô tả sự cố`
  String get EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM {
    return Intl.message(
      'Mô tả sự cố',
      name: 'EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM',
      desc: '',
      args: [],
    );
  }

  /// `Chọn chức năng`
  String get CHOOSE_FEATURE__TITLE {
    return Intl.message(
      'Chọn chức năng',
      name: 'CHOOSE_FEATURE__TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra tiến độ`
  String get CHOOSE_FEATURE__CHECK_THE_TERM {
    return Intl.message(
      'Kiểm tra tiến độ',
      name: 'CHOOSE_FEATURE__CHECK_THE_TERM',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo sự cố`
  String get CHOOSE_FEATURE__REPORT_THE_PROBLEM {
    return Intl.message(
      'Báo cáo sự cố',
      name: 'CHOOSE_FEATURE__REPORT_THE_PROBLEM',
      desc: '',
      args: [],
    );
  }

  /// `Cảnh báo`
  String get CHOOSE_FEATURE__WARNING {
    return Intl.message(
      'Cảnh báo',
      name: 'CHOOSE_FEATURE__WARNING',
      desc: '',
      args: [],
    );
  }

  /// `Xem chứng từ`
  String get CHOOSE_FEATURE__CHECK_DOCUMENT {
    return Intl.message(
      'Xem chứng từ',
      name: 'CHOOSE_FEATURE__CHECK_DOCUMENT',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra tiến độ`
  String get CHECK_PROGRESS__TITLE {
    return Intl.message(
      'Kiểm tra tiến độ',
      name: 'CHECK_PROGRESS__TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Xem chi tiết`
  String get CHECK_PROGRESS__DETAIL {
    return Intl.message(
      'Xem chi tiết',
      name: 'CHECK_PROGRESS__DETAIL',
      desc: '',
      args: [],
    );
  }

  /// `Chọn công việc`
  String get CHOOSE_JOB__TITLE {
    return Intl.message(
      'Chọn công việc',
      name: 'CHOOSE_JOB__TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Cảnh báo`
  String get WARNING__TITLE {
    return Intl.message(
      'Cảnh báo',
      name: 'WARNING__TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Xem chứng từ`
  String get DOCUMENT__CHECK_DOCUMENT {
    return Intl.message(
      'Xem chứng từ',
      name: 'DOCUMENT__CHECK_DOCUMENT',
      desc: '',
      args: [],
    );
  }

  /// `Xem báo cáo`
  String get EDIT_REPORT__TITLE {
    return Intl.message(
      'Xem báo cáo',
      name: 'EDIT_REPORT__TITLE',
      desc: '',
      args: [],
    );
  }

  /// `Thêm báo cáo`
  String get CREATE_REPORT__TITLE {
    return Intl.message(
      'Thêm báo cáo',
      name: 'CREATE_REPORT__TITLE',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
