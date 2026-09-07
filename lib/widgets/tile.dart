import 'package:flutter/material.dart';

/// White rounded card with a soft shadow, matching the reference app's tile style.
class Tile extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const Tile({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
