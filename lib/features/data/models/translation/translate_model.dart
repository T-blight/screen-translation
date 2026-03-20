import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/translate_entity.dart';

part 'translate_model.g.dart';

@JsonSerializable()
class TranslateModel extends TranslateEntity {
  TranslateModel({
    required super.text,
    required super.source,
    required super.target,
  });

  factory TranslateModel.fromJson(Map<String, dynamic> json) =>
      _$TranslateModelFromJson(json);

  Map<String, dynamic> toJson() => _$TranslateModelToJson(this);

}