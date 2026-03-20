// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateModel _$TranslateModelFromJson(Map<String, dynamic> json) =>
    TranslateModel(
      text: json['text'] as String,
      source: json['source'] as String,
      target: json['target'] as String,
    );

Map<String, dynamic> _$TranslateModelToJson(TranslateModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'source': instance.source,
      'target': instance.target,
    };
