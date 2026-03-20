import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

part 'language_event.freezed.dart';

@freezed
class LanguageEvent with _$LanguageEvent{
  const factory LanguageEvent.swapLanguages() = SwapLanguage;
  const factory LanguageEvent.changeLanguageSource(TranslateLanguage lang)= ChangeLanguage;
}