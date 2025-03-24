// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Flashcard _$FlashcardFromJson(Map<String, dynamic> json) {
  return _Flashcard.fromJson(json);
}

/// @nodoc
mixin _$Flashcard {
  int get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  String get example => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Flashcard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardCopyWith<Flashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardCopyWith<$Res> {
  factory $FlashcardCopyWith(Flashcard value, $Res Function(Flashcard) then) =
      _$FlashcardCopyWithImpl<$Res, Flashcard>;
  @useResult
  $Res call(
      {int id,
      String word,
      String meaning,
      String example,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$FlashcardCopyWithImpl<$Res, $Val extends Flashcard>
    implements $FlashcardCopyWith<$Res> {
  _$FlashcardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? meaning = null,
    Object? example = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardImplCopyWith<$Res>
    implements $FlashcardCopyWith<$Res> {
  factory _$$FlashcardImplCopyWith(
          _$FlashcardImpl value, $Res Function(_$FlashcardImpl) then) =
      __$$FlashcardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String word,
      String meaning,
      String example,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$FlashcardImplCopyWithImpl<$Res>
    extends _$FlashcardCopyWithImpl<$Res, _$FlashcardImpl>
    implements _$$FlashcardImplCopyWith<$Res> {
  __$$FlashcardImplCopyWithImpl(
      _$FlashcardImpl _value, $Res Function(_$FlashcardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? meaning = null,
    Object? example = null,
    Object? createdAt = null,
  }) {
    return _then(_$FlashcardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardImpl implements _Flashcard {
  _$FlashcardImpl(
      {required this.id,
      required this.word,
      required this.meaning,
      required this.example,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$FlashcardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardImplFromJson(json);

  @override
  final int id;
  @override
  final String word;
  @override
  final String meaning;
  @override
  final String example;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Flashcard(id: $id, word: $word, meaning: $meaning, example: $example, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, word, meaning, example, createdAt);

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardImplCopyWith<_$FlashcardImpl> get copyWith =>
      __$$FlashcardImplCopyWithImpl<_$FlashcardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardImplToJson(
      this,
    );
  }
}

abstract class _Flashcard implements Flashcard {
  factory _Flashcard(
          {required final int id,
          required final String word,
          required final String meaning,
          required final String example,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$FlashcardImpl;

  factory _Flashcard.fromJson(Map<String, dynamic> json) =
      _$FlashcardImpl.fromJson;

  @override
  int get id;
  @override
  String get word;
  @override
  String get meaning;
  @override
  String get example;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardImplCopyWith<_$FlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
