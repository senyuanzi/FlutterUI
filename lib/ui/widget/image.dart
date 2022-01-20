import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///默认cover模式，带有缓存的image
class CoverCacheImage extends StatelessWidget {
  const CoverCacheImage(this.imageUrl, {Key? key}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image(fit: BoxFit.cover, image: CachedNetworkImageProvider(imageUrl));
  }
}

extension BorderX on CircleAvatar {
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
}
