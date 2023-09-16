import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Core/Utils/color_manager.dart';
import '../ViewModel/Cubit/cubit.dart';
import 'Widget/Bill_PaymentBody.dart';

class BillPaymnt extends StatelessWidget {
  const BillPaymnt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BillPaymntCubit(),
      child: Container(
        color: ColorManager.primary,
        child: const SafeArea(
          child: Scaffold(
            body: BillPaymntBody(),
          ),
        ),
      ),
    );
  }
}
