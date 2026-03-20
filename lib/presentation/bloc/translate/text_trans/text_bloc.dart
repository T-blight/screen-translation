import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tombozi/presentation/bloc/translate/text_trans/text_event.dart';
import 'package:tombozi/presentation/bloc/translate/text_trans/text_state.dart';

import '../../../../features/domain/usecases/translation/translate_text_usecase.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  Timer? _debounce;
  TranslateTextUseCase? translateText;


  TextBloc(this.translateText) : super(const TextState.start()) {
    on<TextEvent>((event, emit) async {
      await event.when(
        textChanged: (text) => _onTextChanged(text, emit),
        submitted: () => _onSubmitted(emit),
      );
    });
  }

  Future<void> _onTextChanged(String text, Emitter<TextState> emit) async {

    _debounce?.isActive ?? false ? _debounce!.cancel() : emit(TextState.loading());

    final result = await translateText?.call(
      text: text,
      source: "en",
      target: "vi",
    );

    emit(TextState.success(result!.text));
  }

  Future<void> _onSubmitted(Emitter<TextState> emit) async {

  }
}
