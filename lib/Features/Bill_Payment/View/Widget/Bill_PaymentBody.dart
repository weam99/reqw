import 'package:flutter/material.dart';

import '../../../../Core/Widget/CustomAppBar.dart';
import 'BillPaymentAppBarContent.dart';
import 'ConfirmContainer.dart';
import 'PaymentContainer.dart';
import 'PaymentMethod.dart';
import 'ServiceContainer.dart';

class BillPaymntBody extends StatelessWidget {
  const BillPaymntBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: Column(
        children: [
          const AppBarNotification(content: BillPaymentAppBarContent()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Material(
                    elevation: .1,
                    borderRadius: BorderRadius.circular(8),
                    child: const PaymentContainer(),
                  ),
                  const SizedBox(height: 16),
                  Material(
                    elevation: .1,
                    borderRadius: BorderRadius.circular(8),
                    child: const ServiceContainer(),
                  ),
                  const SizedBox(height: 16),
                  const PaymentMethod()
                ],
              ),
            ),
          ),
          const ConfirmContainer()
        ],
      ),
    );
  }
}
