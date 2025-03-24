// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardImpl _$$FlashcardImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardImpl(
      id: (json['id'] as num).toInt(),
      word: json['word'] as String,
      meaning: json['meaning'] as String,
      example: json['example'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$FlashcardImplToJson(_$FlashcardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'meaning': instance.meaning,
      'example': instance.example,
      'created_at': instance.createdAt.toIso8601String(),
    };
