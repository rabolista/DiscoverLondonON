import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Shows a network image (cached to disk) filling its bounds, and falls back to
/// [fallback] while loading and if the image is missing or fails to load.
class RemoteImage extends StatelessWidget {
  final String? url;
  final Widget fallback;
  final BoxFit fit;

  const RemoteImage({
    super.key,
    required this.url,
    required this.fallback,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final src = url;
    if (src == null || src.isEmpty) return fallback;
    return CachedNetworkImage(
      imageUrl: src,
      fit: fit,
      fadeInDuration: const Duration(milliseconds: 200),
      placeholder: (context, url) => fallback,
      errorWidget: (context, url, error) => fallback,
    );
  }
}
