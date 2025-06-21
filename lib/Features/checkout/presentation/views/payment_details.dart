import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/payment_detials_view_body.dart';
import 'package:chweckoutpayment/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: 'Payment Details'
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
