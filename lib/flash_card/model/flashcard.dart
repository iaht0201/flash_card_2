import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard.freezed.dart';
part 'flashcard.g.dart';

@freezed
class Flashcard with _$Flashcard {
  factory Flashcard({
    required int id,
    required String word,
    required String meaning,
    required String example,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Flashcard;

  factory Flashcard.fromJson(Map<String, dynamic> json) => _$FlashcardFromJson(json);
}
