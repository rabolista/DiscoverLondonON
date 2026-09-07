import 'package:flutter/material.dart';
import '../models/destination.dart';
import 'remote_image.dart';

/// A neighbourhood image: a real photo when one is available, otherwise a
/// gradient tile with the neighbourhood's icon and name.
class DestinationImage extends StatelessWidget {
  final Destination destination;
  final BorderRadius? borderRadius;

  const DestinationImage({super.key, required this.destination, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: RemoteImage(
        url: destination.imageUrl,
        fallback: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: destination.colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(destination.icon, size: 28, color: Colors.white),
                  const SizedBox(height: 4),
                  Text(
                    destination.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
