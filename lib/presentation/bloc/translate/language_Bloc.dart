import 'package:bloc/bloc.dart';
import 'package:tombozi/presentation/bloc/translate/language_event.dart';
import 'package:tombozi/presentation/bloc/translate/language_state.dart';

import '../../../features/domain/entities/language_pair.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguagePair? languagePair)
    :super(LanguageState.initial(pair: initialPair)) {

    on<LanguageEvent>((event, emit) {
      event.when(
        loadLanguage: () => _onLoadLanguage(emit),
        swapLanguages: () {},
        changeLanguage: (String id) {},
      );
    });
  }
}

Future<void> _onLoadLanguage(
  Emitter<LanguageState> emit,
) async {

}