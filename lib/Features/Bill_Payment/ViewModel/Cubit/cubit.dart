import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class BillPaymntCubit extends Cubit<BillPaymntState> {
  BillPaymntCubit() : super(InitState());
  static BillPaymntCubit get(context) => BlocProvider.of(context);
  String selectedMethod = "Credit Card";
  changeMethod({required String method}) {
    selectedMethod = method;
    emit(ChangeMethodState());
  }
}
