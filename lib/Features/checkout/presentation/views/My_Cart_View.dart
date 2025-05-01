
import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/My_Cart_View_Body.dart';
import 'package:chweckoutpayment/core/uitls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/images/Arrow.svg',
            height: 18,
          ),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
