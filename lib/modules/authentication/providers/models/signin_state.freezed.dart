// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninState {
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
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SigninStateDataCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateDataCopyWith(
          _$SigninStateData value, $Res Function(_$SigninStateData) then) =
      __$$SigninStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SigninStateDataCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateData>
    implements _$$SigninStateDataCopyWith<$Res> {
  __$$SigninStateDataCopyWithImpl(
      _$SigninStateData _value, $Res Function(_$SigninStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninStateData(
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

class _$SigninStateData extends SigninStateData {
  const _$SigninStateData({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SigninState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateData &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateDataCopyWith<_$SigninStateData> get copyWith =>
      __$$SigninStateDataCopyWithImpl<_$SigninStateData>(this, _$identity);

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
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SigninStateData extends SigninState {
  const factory SigninStateData(
      {required final Email email,
      required final Password password}) = _$SigninStateData;
  const SigninStateData._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SigninStateDataCopyWith<_$SigninStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninStateSendingCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateSendingCopyWith(_$SigninStateSending value,
          $Res Function(_$SigninStateSending) then) =
      __$$SigninStateSendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SigninStateSendingCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateSending>
    implements _$$SigninStateSendingCopyWith<$Res> {
  __$$SigninStateSendingCopyWithImpl(
      _$SigninStateSending _value, $Res Function(_$SigninStateSending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninStateSending(
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

class _$SigninStateSending extends SigninStateSending {
  const _$SigninStateSending({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SigninState.sending(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateSending &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateSendingCopyWith<_$SigninStateSending> get copyWith =>
      __$$SigninStateSendingCopyWithImpl<_$SigninStateSending>(
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
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class SigninStateSending extends SigninState {
  const factory SigninStateSending(
      {required final Email email,
      required final Password password}) = _$SigninStateSending;
  const SigninStateSending._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SigninStateSendingCopyWith<_$SigninStateSending> get copyWith =>
      throw _privateConstructorUsedError;
}
