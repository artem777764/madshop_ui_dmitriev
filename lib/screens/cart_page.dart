import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_colors.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_button.dart';
import 'package:madshop_ui_dmitriev/widgets/app_product_card_order.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Cart',
                  style: AppTextStyles.headlineSmall,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '3',
                    style: AppTextStyles.contextMediumSmallBold,
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 1,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 3,
              children: const [
                AppProductCardOrder(
                  imagePath: 'assets/images/example1.png',
                  title: 'Текстовое название 1',
                  option: 'Pink, Size M',
                  price: '1 290 ₽',
                ),
                AppProductCardOrder(
                  imagePath: 'assets/images/example2.png',
                  title: 'Текстовое название 2',
                  option: 'Blue, Size L',
                  price: '6 990 ₽',
                ),
                AppProductCardOrder(
                  imagePath: 'assets/images/example3.png',
                  title: 'Текстовое название 3',
                  option: 'Black, Size S',
                  price: '1 790 ₽',
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.gray,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: 12885 ₽',
                  style: AppTextStyles.headlineSmall,
                ),
                SizedBox(
                  width: 160,
                  child: AppButton(
                    label: 'Checkout',
                    onPressed: () => {},
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}