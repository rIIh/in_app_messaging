// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageSlot _$MessageSlotFromJson(Map<String, dynamic> json) {
  return _MessageSlot.fromJson(json);
}

/// @nodoc
mixin _$MessageSlot {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageSlotCopyWith<MessageSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSlotCopyWith<$Res> {
  factory $MessageSlotCopyWith(
          MessageSlot value, $Res Function(MessageSlot) then) =
      _$MessageSlotCopyWithImpl<$Res, MessageSlot>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MessageSlotCopyWithImpl<$Res, $Val extends MessageSlot>
    implements $MessageSlotCopyWith<$Res> {
  _$MessageSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageSlotImplCopyWith<$Res>
    implements $MessageSlotCopyWith<$Res> {
  factory _$$MessageSlotImplCopyWith(
          _$MessageSlotImpl value, $Res Function(_$MessageSlotImpl) then) =
      __$$MessageSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$MessageSlotImplCopyWithImpl<$Res>
    extends _$MessageSlotCopyWithImpl<$Res, _$MessageSlotImpl>
    implements _$$MessageSlotImplCopyWith<$Res> {
  __$$MessageSlotImplCopyWithImpl(
      _$MessageSlotImpl _value, $Res Function(_$MessageSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MessageSlotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageSlotImpl implements _MessageSlot {
  const _$MessageSlotImpl({required this.id});

  factory _$MessageSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageSlotImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'MessageSlot(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSlotImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSlotImplCopyWith<_$MessageSlotImpl> get copyWith =>
      __$$MessageSlotImplCopyWithImpl<_$MessageSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageSlotImplToJson(
      this,
    );
  }
}

abstract class _MessageSlot implements MessageSlot {
  const factory _MessageSlot({required final String id}) = _$MessageSlotImpl;

  factory _MessageSlot.fromJson(Map<String, dynamic> json) =
      _$MessageSlotImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MessageSlotImplCopyWith<_$MessageSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
