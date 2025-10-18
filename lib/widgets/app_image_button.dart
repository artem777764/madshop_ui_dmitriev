import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_shadows.dart';

class AppImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imagePath;
  final double size;

  const AppImageButton({
    super.key,
    required this.onPressed,
    required this.imagePath,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppShadows.light],
        shape: BoxShape.circle,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: const CircleBorder(),
          padding: EdgeInsets.all(size * 0.2),
        ),
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }
}