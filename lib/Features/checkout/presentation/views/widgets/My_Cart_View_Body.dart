import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:chweckoutpayment/core/uitls/styles.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset('assets/images/basket_image.png'),
          const SizedBox(
            height: 25,
          ),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}
