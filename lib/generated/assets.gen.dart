/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arrow-back-icon.svg
  SvgGenImage get arrowBackIcon =>
      const SvgGenImage('assets/images/arrow-back-icon.svg');

  /// File path: assets/images/back-icon.svg
  SvgGenImage get backIcon => const SvgGenImage('assets/images/back-icon.svg');

  /// File path: assets/images/bg-login.png
  AssetGenImage get bgLoginPng =>
      const AssetGenImage('assets/images/bg-login.png');

  /// File path: assets/images/bg-login.svg
  SvgGenImage get bgLoginSvg => const SvgGenImage('assets/images/bg-login.svg');

  /// File path: assets/images/camera-icon.svg
  SvgGenImage get cameraIcon =>
      const SvgGenImage('assets/images/camera-icon.svg');

  /// File path: assets/images/check-icon.svg
  SvgGenImage get checkIcon =>
      const SvgGenImage('assets/images/check-icon.svg');

  /// File path: assets/images/customer-icon.svg
  SvgGenImage get customerIcon =>
      const SvgGenImage('assets/images/customer-icon.svg');

  /// File path: assets/images/document-icon.svg
  SvgGenImage get documentIcon =>
      const SvgGenImage('assets/images/document-icon.svg');

  /// File path: assets/images/dropdown-icon.svg
  SvgGenImage get dropdownIcon =>
      const SvgGenImage('assets/images/dropdown-icon.svg');

  /// File path: assets/images/gallery-icon.svg
  SvgGenImage get galleryIcon =>
      const SvgGenImage('assets/images/gallery-icon.svg');

  /// File path: assets/images/home-icon.svg
  SvgGenImage get homeIcon => const SvgGenImage('assets/images/home-icon.svg');

  /// File path: assets/images/info-icon.svg
  SvgGenImage get infoIcon => const SvgGenImage('assets/images/info-icon.svg');

  /// File path: assets/images/key-icon.svg
  SvgGenImage get keyIcon => const SvgGenImage('assets/images/key-icon.svg');

  /// File path: assets/images/left-icon.svg
  SvgGenImage get leftIcon => const SvgGenImage('assets/images/left-icon.svg');

  /// File path: assets/images/location-icon.svg
  SvgGenImage get locationIcon =>
      const SvgGenImage('assets/images/location-icon.svg');

  /// File path: assets/images/progress-icon.svg
  SvgGenImage get progressIcon =>
      const SvgGenImage('assets/images/progress-icon.svg');

  /// File path: assets/images/right-icon.svg
  SvgGenImage get rightIcon =>
      const SvgGenImage('assets/images/right-icon.svg');

  /// File path: assets/images/warn-icon.svg
  SvgGenImage get warnIcon => const SvgGenImage('assets/images/warn-icon.svg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
