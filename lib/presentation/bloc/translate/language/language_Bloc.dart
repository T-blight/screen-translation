

import 'package:bloc/bloc.dart';

import 'language_event.dart';
import 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(super.initialState);

}

Future<void> _onLoadLanguage(
  Emitter<LanguageState> emit,
) async {

}