import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_borders.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';

class AppInput extends StatelessWidget {
  final String placeholder;

  const AppInput({
    super.key,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        style: AppTextStyles.inputSmall,
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: AppTextStyles.inputSmallPlaceholder,
          filled: true,
          fillColor: AppColors.gray,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: AppBorders.full,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppBorders.full,
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
