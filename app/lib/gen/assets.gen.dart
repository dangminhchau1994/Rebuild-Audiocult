/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/NunitoSans-Black.ttf
  String get nunitoSansBlack => 'assets/fonts/NunitoSans-Black.ttf';

  /// File path: assets/fonts/NunitoSans-BlackItalic.ttf
  String get nunitoSansBlackItalic => 'assets/fonts/NunitoSans-BlackItalic.ttf';

  /// File path: assets/fonts/NunitoSans-Bold.ttf
  String get nunitoSansBold => 'assets/fonts/NunitoSans-Bold.ttf';

  /// File path: assets/fonts/NunitoSans-BoldItalic.ttf
  String get nunitoSansBoldItalic => 'assets/fonts/NunitoSans-BoldItalic.ttf';

  /// File path: assets/fonts/NunitoSans-ExtraBold.ttf
  String get nunitoSansExtraBold => 'assets/fonts/NunitoSans-ExtraBold.ttf';

  /// File path: assets/fonts/NunitoSans-ExtraBoldItalic.ttf
  String get nunitoSansExtraBoldItalic =>
      'assets/fonts/NunitoSans-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/NunitoSans-ExtraLight.ttf
  String get nunitoSansExtraLight => 'assets/fonts/NunitoSans-ExtraLight.ttf';

  /// File path: assets/fonts/NunitoSans-ExtraLightItalic.ttf
  String get nunitoSansExtraLightItalic =>
      'assets/fonts/NunitoSans-ExtraLightItalic.ttf';

  /// File path: assets/fonts/NunitoSans-Italic.ttf
  String get nunitoSansItalic => 'assets/fonts/NunitoSans-Italic.ttf';

  /// File path: assets/fonts/NunitoSans-Light.ttf
  String get nunitoSansLight => 'assets/fonts/NunitoSans-Light.ttf';

  /// File path: assets/fonts/NunitoSans-LightItalic.ttf
  String get nunitoSansLightItalic => 'assets/fonts/NunitoSans-LightItalic.ttf';

  /// File path: assets/fonts/NunitoSans-Regular.ttf
  String get nunitoSansRegular => 'assets/fonts/NunitoSans-Regular.ttf';

  /// File path: assets/fonts/NunitoSans-SemiBold.ttf
  String get nunitoSansSemiBold => 'assets/fonts/NunitoSans-SemiBold.ttf';

  /// File path: assets/fonts/NunitoSans-SemiBoldItalic.ttf
  String get nunitoSansSemiBoldItalic =>
      'assets/fonts/NunitoSans-SemiBoldItalic.ttf';

  /// List of all assets
  List<String> get values => [
        nunitoSansBlack,
        nunitoSansBlackItalic,
        nunitoSansBold,
        nunitoSansBoldItalic,
        nunitoSansExtraBold,
        nunitoSansExtraBoldItalic,
        nunitoSansExtraLight,
        nunitoSansExtraLightItalic,
        nunitoSansItalic,
        nunitoSansLight,
        nunitoSansLightItalic,
        nunitoSansRegular,
        nunitoSansSemiBold,
        nunitoSansSemiBoldItalic
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_checked.svg
  SvgGenImage get iconChecked =>
      const SvgGenImage('assets/icons/icon_checked.svg');

  /// File path: assets/icons/icon_drop_down.svg
  SvgGenImage get iconDropDown =>
      const SvgGenImage('assets/icons/icon_drop_down.svg');

  /// File path: assets/icons/icon_global.svg
  SvgGenImage get iconGlobal =>
      const SvgGenImage('assets/icons/icon_global.svg');

  /// File path: assets/icons/icon_lock.svg
  SvgGenImage get iconLock => const SvgGenImage('assets/icons/icon_lock.svg');

  /// File path: assets/icons/icon_logo.svg
  SvgGenImage get iconLogo => const SvgGenImage('assets/icons/icon_logo.svg');

  /// File path: assets/icons/icon_setting.svg
  SvgGenImage get iconSetting =>
      const SvgGenImage('assets/icons/icon_setting.svg');

  /// File path: assets/icons/icon_toggle_password.svg
  SvgGenImage get iconTogglePassword =>
      const SvgGenImage('assets/icons/icon_toggle_password.svg');

  /// File path: assets/icons/icon_turn.svg
  SvgGenImage get iconTurn => const SvgGenImage('assets/icons/icon_turn.svg');

  /// File path: assets/icons/icon_user_friends.svg
  SvgGenImage get iconUserFriends =>
      const SvgGenImage('assets/icons/icon_user_friends.svg');

  /// File path: assets/icons/icon_user_subscription.svg
  SvgGenImage get iconUserSubscription =>
      const SvgGenImage('assets/icons/icon_user_subscription.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconChecked,
        iconDropDown,
        iconGlobal,
        iconLock,
        iconLogo,
        iconSetting,
        iconTogglePassword,
        iconTurn,
        iconUserFriends,
        iconUserSubscription
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/user_avatars.png
  AssetGenImage get userAvatars =>
      const AssetGenImage('assets/images/user_avatars.png');

  /// List of all assets
  List<AssetGenImage> get values => [userAvatars];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// List of all assets
  List<String> get values => [enUS];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
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
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
