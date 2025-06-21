import 'package:chweckoutpayment/Features/checkout/presentation/views/payment_details.dart';
import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/cart_info_item.dart';
import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:chweckoutpayment/core/uitls/styles.dart';
import 'package:chweckoutpayment/core/widgets/custom_button.dart';
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
          Expanded(
              child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            thickness: 2,
            // height: 34,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
              height: 16
          ),
          CustomButton(
            onTap: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return PaymentDetailsView();
              }));
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
