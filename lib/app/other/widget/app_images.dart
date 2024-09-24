import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:flutter/material.dart';

enum BImageSize {
  s140(dim: 140),
  s100(dim: 100),
  s80(dim: 80),
  s52(dim: 52),
  s48(dim: 48),
  s36(dim: 36);

  const BImageSize({required this.dim});

  final int dim;
}

enum BImageType { circle, rectangular }

class BImage extends StatelessWidget {
  const BImage({
    super.key,
    required this.size,
    required this.type,
    this.padding,
    this.margin,
    this.withBorder = true,
    this.onTap,
    this.path,
    this.localPath,
  });

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BImageSize size;
  final BImageType type;
  final bool withBorder;
  final VoidCallback? onTap;
  final String? path;
  final String? localPath;

  Widget child(BuildContext context) {
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);
    final sizeRatio = (devicePixelRatio * size.dim).round();

    if (path != null) {
      return CachedNetworkImage(
        imageUrl: path!,
        width: size.dim.toDouble(),
        height: size.dim.toDouble(),
        fit: BoxFit.cover,
        // memCacheHeight: aspectRatio > 1 ? sizeRatio : null,
        // memCacheWidth: aspectRatio > 1 ? null : sizeRatio,
        // cacheKey: media?.c/,
        progressIndicatorBuilder: (context, url, progress) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularProgressIndicator(value: progress.progress ?? 0),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    }

    if (localPath != null) {
      return Image(
        image: ResizeImage(
          FileImage(File(localPath ?? '')),
          height: sizeRatio,
          width: sizeRatio,
          policy: ResizeImagePolicy.fit,
          allowUpscaling: true,
        ),
        width: size.dim.toDouble(),
        height: size.dim.toDouble(),
        fit: BoxFit.cover,
      );
    }

    return Container();

    // todo difix ya

    // return Image(
    //   image: ResizeImage(
    //     domain.getAsset.provider(),
    //     height: sizeRatio,
    //     width: sizeRatio,
    //     policy: ResizeImagePolicy.fit,
    //     allowUpscaling: true,
    //   ),
    //   width: size.dim.toDouble(),
    //   height: size.dim.toDouble(),
    //   fit: BoxFit.cover,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // borderRadius: BorderRadius.circular(type == BImageType.circle ? size.dim / 2 : context.appMargin),
      child: Container(
        margin: margin,
        padding: padding,
        width: size.dim.toDouble(),
        height: size.dim.toDouble(),
        decoration: BoxDecoration(
          // border: withBorder ? Border.all(color: Color.) : null,
          borderRadius: BorderRadius.circular(type == BImageType.circle ? size.dim / 2 : context.appMargin),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(type == BImageType.circle ? size.dim / 2 : context.appMargin),
          child: child(context),
        ),
      ),
    );
  }
}
