import 'package:flutter/material.dart';
import 'package:madshop_ui_dmitriev/theme/app_text_styles.dart';
import 'package:madshop_ui_dmitriev/widgets/app_product_card.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

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
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Favourite',
                style: AppTextStyles.headlineSmall,
              ),
            )
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 12,
              childAspectRatio: 0.68,
              children: const [
                AppProductCard(
                  imagePath: 'assets/images/example6.png',
                  title: 'Текстовое название 1',
                  price: '1 290 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example5.png',
                  title: 'Текстовое название 2',
                  price: '6 990 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example4.png',
                  title: 'Текстовое название 3',
                  price: '1 790 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example3.png',
                  title: 'Текстовое название 4',
                  price: '990 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example2.png',
                  title: 'Текстовое название 5',
                  price: '1100 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example1.png',
                  title: 'Текстовое название 6',
                  price: '2150 ₽',
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}