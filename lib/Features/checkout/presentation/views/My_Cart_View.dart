import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/My_Cart_View_Body.dart';
import 'package:chweckoutpayment/core/uitls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'My Cart',
      ),
      body: const MyCartViewBody(),
    );
  }

}
