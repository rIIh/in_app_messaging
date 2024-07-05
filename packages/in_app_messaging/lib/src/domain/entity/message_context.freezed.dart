// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageContext _$MessageContextFromJson(Map<String, dynamic> json) {
  return _MessageContext.fromJson(json);
}

/// @nodoc
mixin _$MessageContext {
  /// For Trigger conditions
  MessageTrigger get trigger => throw _privateConstructorUsedError;

  /// For Interactions conditions
  MessageInteractions get interactions => throw _privateConstructorUsedError;

  /// For Interactions conditions
  UserContext get user => throw _privateConstructorUsedError;
  DeviceContext get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContextCopyWith<MessageContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContextCopyWith<$Res> {
  factory $MessageContextCopyWith(
          MessageContext value, $Res Function(MessageContext) then) =
      _$MessageContextCopyWithImpl<$Res, MessageContext>;
  @useResult
  $Res call(
      {MessageTrigger trigger,
      MessageInteractions interactions,
      UserContext user,
      DeviceContext device});

  $MessageTriggerCopyWith<$Res> get trigger;
  $MessageInteractionsCopyWith<$Res> get interactions;
  $UserContextCopyWith<$Res> get user;
  $DeviceContextCopyWith<$Res> get device;
}

/// @nodoc
class _$MessageContextCopyWithImpl<$Res, $Val extends MessageContext>
    implements $MessageContextCopyWith<$Res> {
  _$MessageContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trigger = null,
    Object? interactions = null,
    Object? user = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as MessageTrigger,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as MessageInteractions,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserContext,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceContext,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageTriggerCopyWith<$Res> get trigger {
    return $MessageTriggerCopyWith<$Res>(_value.trigger, (value) {
      return _then(_value.copyWith(trigger: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageInteractionsCopyWith<$Res> get interactions {
    return $MessageInteractionsCopyWith<$Res>(_value.interactions, (value) {
      return _then(_value.copyWith(interactions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserContextCopyWith<$Res> get user {
    return $UserContextCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceContextCopyWith<$Res> get device {
    return $DeviceContextCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageContextImplCopyWith<$Res>
    implements $MessageContextCopyWith<$Res> {
  factory _$$MessageContextImplCopyWith(_$MessageContextImpl value,
          $Res Function(_$MessageContextImpl) then) =
      __$$MessageContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageTrigger trigger,
      MessageInteractions interactions,
      UserContext user,
      DeviceContext device});

  @override
  $MessageTriggerCopyWith<$Res> get trigger;
  @override
  $MessageInteractionsCopyWith<$Res> get interactions;
  @override
  $UserContextCopyWith<$Res> get user;
  @override
  $DeviceContextCopyWith<$Res> get device;
}

/// @nodoc
class __$$MessageContextImplCopyWithImpl<$Res>
    extends _$MessageContextCopyWithImpl<$Res, _$MessageContextImpl>
    implements _$$MessageContextImplCopyWith<$Res> {
  __$$MessageContextImplCopyWithImpl(
      _$MessageContextImpl _value, $Res Function(_$MessageContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trigger = null,
    Object? interactions = null,
    Object? user = null,
    Object? device = null,
  }) {
    return _then(_$MessageContextImpl(
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as MessageTrigger,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as MessageInteractions,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserContext,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceContext,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageContextImpl implements _MessageContext {
  const _$MessageContextImpl(
      {required this.trigger,
      required this.interactions,
      required this.user,
      required this.device});

  factory _$MessageContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageContextImplFromJson(json);

  /// For Trigger conditions
  @override
  final MessageTrigger trigger;

  /// For Interactions conditions
  @override
  final MessageInteractions interactions;

  /// For Interactions conditions
  @override
  final UserContext user;
  @override
  final DeviceContext device;

  @override
  String toString() {
    return 'MessageContext(trigger: $trigger, interactions: $interactions, user: $user, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageContextImpl &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.interactions, interactions) ||
                other.interactions == interactions) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trigger, interactions, user, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageContextImplCopyWith<_$MessageContextImpl> get copyWith =>
      __$$MessageContextImplCopyWithImpl<_$MessageContextImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageContextImplToJson(
      this,
    );
  }
}

abstract class _MessageContext implements MessageContext {
  const factory _MessageContext(
      {required final MessageTrigger trigger,
      required final MessageInteractions interactions,
      required final UserContext user,
      required final DeviceContext device}) = _$MessageContextImpl;

  factory _MessageContext.fromJson(Map<String, dynamic> json) =
      _$MessageContextImpl.fromJson;

  @override

  /// For Trigger conditions
  MessageTrigger get trigger;
  @override

  /// For Interactions conditions
  MessageInteractions get interactions;
  @override

  /// For Interactions conditions
  UserContext get user;
  @override
  DeviceContext get device;
  @override
  @JsonKey(ignore: true)
  _$$MessageContextImplCopyWith<_$MessageContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
