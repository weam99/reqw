import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/Share_Pref.dart';
import '../../../../../Core/Utils/assets_manager.dart';
import 'state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(InitState());
  static ProfileCubit get(context) => BlocProvider.of(context);
  bool switchedButton = true;

  changeSwitchedButton(bool value) {
    switchedButton = value;
    emit(ChangeSWitchedButtonState());
  }

  late String selectedLanguage;
  late String appLanguage;
  getAppLanguage() async {
    dynamic lang = Sharepref.getdata(key: 'lang');
    print("Language $lang");
    if (lang == null) {
      selectedLanguage = "English";
    } else {
      selectedLanguage = lang;
    }
    appLanguage = selectedLanguage;
    await Sharepref.savedata(key: 'lang', value: "English");
    print("Language $lang");
    print("selectedLanguage $selectedLanguage");
    emit(GetLanguageState());
  }

  changeLanguage({required String newLanguage}) {
    selectedLanguage = newLanguage;

    emit(ChangeLanguageState());
  }

  setAppLanguage() async {
    appLanguage = selectedLanguage;
    await Sharepref.savedata(key: 'lang', value: appLanguage);
    emit(ChangeLanguageState());
  }

  setFlag() {
    if (appLanguage == "English") {
      return ImageAssets.usaFlag;
    } else if (appLanguage == "العربية") {
      return ImageAssets.egyptFlag;
    } else {
      return ImageAssets.germanyFlag;
    }
  }
}
