import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

///默认cover模式，带有缓存的image
class CoverCacheImage extends StatelessWidget {
  const CoverCacheImage(this.imageUrl, {Key? key, this.placeholder}) : super(key: key);
  final String imageUrl;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      errorWidget: (context, url, error) =>
          placeholder == null ? Container(color: Colors.grey) : Image.asset(placeholder!),
    );
  }
}

extension CircleAvatarBorderX on CircleAvatar {
  Container border({double width = 2, Color color = const Color(0xff95d9f1)}) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: color),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: this);
  }

  CircleAvatar radius(double? radius) {
    return copyWith(radius: radius);
  }

  CircleAvatar copyWith({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    ImageProvider? foregroundImage,
    void Function(Object, StackTrace?)? onBackgroundImageError,
    void Function(Object, StackTrace?)? onForegroundImageError,
    Color? foregroundColor,
    double? radius,
    double? minRadius,
    double? maxRadius,
  }) {
    return CircleAvatar(
      key: key ?? this.key,
      child: child ?? this.child,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      foregroundImage: foregroundImage ?? this.foregroundImage,
      onBackgroundImageError: onBackgroundImageError ?? this.onBackgroundImageError,
      onForegroundImageError: onForegroundImageError ?? this.onForegroundImageError,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      radius: radius ?? this.radius,
      minRadius: minRadius ?? this.minRadius,
      maxRadius: maxRadius ?? this.maxRadius,
    );
  }
}

extension ImageX on Image {
  Image fit(BoxFit? fit) {
    return copyWith(fit: fit);
  }

  Image coverMode() {
    return copyWith(fit: BoxFit.cover);
  }

  Image containMode() {
    return copyWith(fit: BoxFit.contain);
  }

  Image size({double? width, double? height}) {
    return copyWith(width: width, height: height);
  }

  Image antialias(bool? isAntialias) {
    return copyWith(isAntiAlias: isAntialias ?? true);
  }

  ///todo imageScale
  ///默认大小应该和字体一样？
  ///todo orientation
  ///符号 icon 的集成 font-awesome？
  ///todo 占位符
  //FadeInImage(
  //   height: 200.0, // 根据需要设置
  //   width: 300.0, // 根据需要设置
  //   fit: BoxFit.cover,
  //   placeholder: AssetImage("assets/company_logo.jpg"), //占位图片（本地文件）
  //   image: NetworkImage(your_image_url), //网络图片
  // ),

  Image copyWith({
    Key? key,
    ImageProvider? image,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    String? semanticLabel,
    bool? excludeFromSemantics,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    bool? isAntiAlias,
    FilterQuality? filterQuality,
  }) {
    return Image(
      key: key ?? this.key,
      image: image ?? this.image,
      frameBuilder: frameBuilder ?? this.frameBuilder,
      loadingBuilder: loadingBuilder ?? this.loadingBuilder,
      errorBuilder: errorBuilder ?? this.errorBuilder,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      excludeFromSemantics: excludeFromSemantics ?? this.excludeFromSemantics,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      colorBlendMode: colorBlendMode ?? this.colorBlendMode,
      fit: fit ?? this.fit,
      alignment: alignment ?? this.alignment,
      repeat: repeat ?? this.repeat,
      centerSlice: centerSlice ?? this.centerSlice,
      matchTextDirection: matchTextDirection ?? this.matchTextDirection,
      gaplessPlayback: gaplessPlayback ?? this.gaplessPlayback,
      isAntiAlias: isAntiAlias ?? this.isAntiAlias,
      filterQuality: filterQuality ?? this.filterQuality,
    );
  }
}
