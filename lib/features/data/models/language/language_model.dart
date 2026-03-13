import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tombozi/features/domain/entities/language_entity.dart';
part 'language_model.g.dart';


@JsonSerializable()
class LanguageModel extends LanguageEntity{
  LanguageModel({
    required super.code,
    required super.name
  });
  factory LanguageModel.fromJson(Map<String, dynamic> json)
  => _$LanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}