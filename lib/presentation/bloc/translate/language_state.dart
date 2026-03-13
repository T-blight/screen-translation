import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/domain/entities/language_pair.dart';

part 'language_state.freezed.dart';

@freezed
sealed class LanguageState with _$LanguageState{
  late final LanguagePair languagePair;

  const factory LanguageState.loading() = Loading;
  const factory LanguageState.success(String token) = Success;
  const factory LanguageState.error(String message) = Error;

  const factory LanguageState.initial({required LanguagePair languagePair}) = Initial;
  const factory LanguageState.UpdateSource(LanguageEntity)
}