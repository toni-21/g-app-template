// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environnements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Environment {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) dev,
    required TResult Function(String name) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? dev,
    TResult? Function(String name)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? dev,
    TResult Function(String name)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevEnvironmentCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$DevEnvironmentCopyWith(
          _$DevEnvironment value, $Res Function(_$DevEnvironment) then) =
      __$$DevEnvironmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DevEnvironmentCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$DevEnvironment>
    implements _$$DevEnvironmentCopyWith<$Res> {
  __$$DevEnvironmentCopyWithImpl(
      _$DevEnvironment _value, $Res Function(_$DevEnvironment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DevEnvironment(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DevEnvironment extends DevEnvironment {
  const _$DevEnvironment({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'Environment.dev(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevEnvironment &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DevEnvironmentCopyWith<_$DevEnvironment> get copyWith =>
      __$$DevEnvironmentCopyWithImpl<_$DevEnvironment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) dev,
    required TResult Function(String name) prod,
  }) {
    return dev(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? dev,
    TResult? Function(String name)? prod,
  }) {
    return dev?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? dev,
    TResult Function(String name)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class DevEnvironment extends Environment {
  const factory DevEnvironment({required final String name}) = _$DevEnvironment;
  const DevEnvironment._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DevEnvironmentCopyWith<_$DevEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProdEnvironmentCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$ProdEnvironmentCopyWith(
          _$ProdEnvironment value, $Res Function(_$ProdEnvironment) then) =
      __$$ProdEnvironmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ProdEnvironmentCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$ProdEnvironment>
    implements _$$ProdEnvironmentCopyWith<$Res> {
  __$$ProdEnvironmentCopyWithImpl(
      _$ProdEnvironment _value, $Res Function(_$ProdEnvironment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ProdEnvironment(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProdEnvironment extends ProdEnvironment {
  const _$ProdEnvironment({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'Environment.prod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdEnvironment &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdEnvironmentCopyWith<_$ProdEnvironment> get copyWith =>
      __$$ProdEnvironmentCopyWithImpl<_$ProdEnvironment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) dev,
    required TResult Function(String name) prod,
  }) {
    return prod(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? dev,
    TResult? Function(String name)? prod,
  }) {
    return prod?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? dev,
    TResult Function(String name)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class ProdEnvironment extends Environment {
  const factory ProdEnvironment({required final String name}) =
      _$ProdEnvironment;
  const ProdEnvironment._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProdEnvironmentCopyWith<_$ProdEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}
