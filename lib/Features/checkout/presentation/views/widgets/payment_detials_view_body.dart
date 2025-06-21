import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/payment_details_list_view.dart';
import 'package:chweckoutpayment/Features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentMethodsListView(),
        CustomCreditCard(),
      ],
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: showBackView,
              onCreditCardWidgetChange: (value) {}),
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (carditCardModel){
                cardHolderName = carditCardModel.cardHolderName;
                expiryDate = carditCardModel.expiryDate;
                cvvCode = carditCardModel.cvvCode;
                cardNumber = carditCardModel.cardNumber;
                showBackView = carditCardModel.isCvvFocused;
                setState(() {});

              },
              formKey: formKey)
        ],
      ),
    );
  }
}
