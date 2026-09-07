import 'package:flutter/material.dart';

/// Small semi-transparent caption crediting the photographer of a hero image,
/// as required by the Wikimedia Commons (CC / public domain) licences.
class ImageCreditChip extends StatelessWidget {
  final String text;

  const ImageCreditChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Text(
          text,
          style: const TextStyle(fontSize: 9, color: Colors.white70),
        ),
      ),
    );
  }
}
