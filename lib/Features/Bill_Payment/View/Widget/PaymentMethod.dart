import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/Utils/color_manager.dart';
import '../../ViewModel/Cubit/cubit.dart';
import '../../ViewModel/Cubit/state.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillPaymntCubit, BillPaymntState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Payment Method ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            paymentMethodItem(context,
                txt: "Credit Card", image: ImageAssets.creditCard),
            const SizedBox(height: 16),
            paymentMethodItem(context,
                txt: "PayPal", image: ImageAssets.payPal),
          ],
        );
      },
    );
  }

  GestureDetector paymentMethodItem(context,
      {required String txt, required String image}) {
    return GestureDetector(
      onTap: () {
        BillPaymntCubit.get(context).changeMethod(method: txt);
      },
      child: Container(
        height: 56,
        padding: const EdgeInsets.all(8),
        decoration: BillPaymntCubit.get(context).selectedMethod == txt
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: ColorManager.primary),
                color: const Color.fromARGB(255, 200, 225, 245),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: const Color(0xffC5C5C5)),
              ),
        child: Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(width: 5),
            Text(
              txt,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const Spacer(),
            BillPaymntCubit.get(context).selectedMethod == txt
                ? selectedContainer()
                : unselectedContainer()
          ],
        ),
      ),
    );
  }

  Container unselectedContainer() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1.5, color: const Color(0xffC5C5C5)),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 10, color: ColorManager.white)),
      ),
    );
  }

  Container selectedContainer() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 8, color: ColorManager.primary),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 4, color: ColorManager.white)),
      ),
    );
  }
}
