// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateDataCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateDataCopyWith(
          _$SignupStateData value, $Res Function(_$SignupStateData) then) =
      __$$SignupStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SignupStateDataCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateData>
    implements _$$SignupStateDataCopyWith<$Res> {
  __$$SignupStateDataCopyWithImpl(
      _$SignupStateData _value, $Res Function(_$SignupStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupStateData(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SignupStateData extends SignupStateData {
  const _$SignupStateData({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateData &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith =>
      __$$SignupStateDataCopyWithImpl<_$SignupStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) {
    return $default?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignupStateData extends SignupState {
  const factory SignupStateData(
      {required final Email email,
      required final Password password}) = _$SignupStateData;
  const SignupStateData._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupStateSendingCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateSendingCopyWith(_$SignupStateSending value,
          $Res Function(_$SignupStateSending) then) =
      __$$SignupStateSendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SignupStateSendingCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateSending>
    implements _$$SignupStateSendingCopyWith<$Res> {
  __$$SignupStateSendingCopyWithImpl(
      _$SignupStateSending _value, $Res Function(_$SignupStateSending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupStateSending(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SignupStateSending extends SignupStateSending {
  const _$SignupStateSending({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignupState.sending(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateSending &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateSendingCopyWith<_$SignupStateSending> get copyWith =>
      __$$SignupStateSendingCopyWithImpl<_$SignupStateSending>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) {
    return sending(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) {
    return sending?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class SignupStateSending extends SignupState {
  const factory SignupStateSending(
      {required final Email email,
      required final Password password}) = _$SignupStateSending;
  const SignupStateSending._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateSendingCopyWith<_$SignupStateSending> get copyWith =>
      throw _privateConstructorUsedError;
}
