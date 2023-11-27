// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppRunState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingState value) loading,
    required TResult Function(AppReadyState value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingState value)? loading,
    TResult? Function(AppReadyState value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingState value)? loading,
    TResult Function(AppReadyState value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRunStateCopyWith<$Res> {
  factory $AppRunStateCopyWith(
          AppRunState value, $Res Function(AppRunState) then) =
      _$AppRunStateCopyWithImpl<$Res, AppRunState>;
}

/// @nodoc
class _$AppRunStateCopyWithImpl<$Res, $Val extends AppRunState>
    implements $AppRunStateCopyWith<$Res> {
  _$AppRunStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLoadingStateCopyWith<$Res> {
  factory _$$AppLoadingStateCopyWith(
          _$AppLoadingState value, $Res Function(_$AppLoadingState) then) =
      __$$AppLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoadingStateCopyWithImpl<$Res>
    extends _$AppRunStateCopyWithImpl<$Res, _$AppLoadingState>
    implements _$$AppLoadingStateCopyWith<$Res> {
  __$$AppLoadingStateCopyWithImpl(
      _$AppLoadingState _value, $Res Function(_$AppLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLoadingState extends AppLoadingState {
  const _$AppLoadingState() : super._();

  @override
  String toString() {
    return 'AppRunState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingState value) loading,
    required TResult Function(AppReadyState value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingState value)? loading,
    TResult? Function(AppReadyState value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingState value)? loading,
    TResult Function(AppReadyState value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppLoadingState extends AppRunState {
  const factory AppLoadingState() = _$AppLoadingState;
  const AppLoadingState._() : super._();
}

/// @nodoc
abstract class _$$AppReadyStateCopyWith<$Res> {
  factory _$$AppReadyStateCopyWith(
          _$AppReadyState value, $Res Function(_$AppReadyState) then) =
      __$$AppReadyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppReadyStateCopyWithImpl<$Res>
    extends _$AppRunStateCopyWithImpl<$Res, _$AppReadyState>
    implements _$$AppReadyStateCopyWith<$Res> {
  __$$AppReadyStateCopyWithImpl(
      _$AppReadyState _value, $Res Function(_$AppReadyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppReadyState extends AppReadyState {
  const _$AppReadyState() : super._();

  @override
  String toString() {
    return 'AppRunState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppReadyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoadingState value) loading,
    required TResult Function(AppReadyState value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLoadingState value)? loading,
    TResult? Function(AppReadyState value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoadingState value)? loading,
    TResult Function(AppReadyState value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AppReadyState extends AppRunState {
  const factory AppReadyState() = _$AppReadyState;
  const AppReadyState._() : super._();
}
