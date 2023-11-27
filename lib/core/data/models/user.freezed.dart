// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return AuthenticatedUserData.fromJson(json);
    case 'anonymous':
      return AnonymousUserData.fromJson(json);
    case 'loading':
      return LoadingUserData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)
        authenticated,
    required TResult Function() anonymous,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult? Function()? anonymous,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult Function()? anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedUserDataCopyWith<$Res> {
  factory _$$AuthenticatedUserDataCopyWith(_$AuthenticatedUserData value,
          $Res Function(_$AuthenticatedUserData) then) =
      __$$AuthenticatedUserDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
      @TimestampConverter()
      @JsonKey(name: 'creation_date')
      DateTime? creationDate,
      @TimestampConverter()
      @JsonKey(name: 'last_update_date')
      DateTime? lastUpdateDate,
      String email,
      String name,
      String? avatarPath});
}

/// @nodoc
class __$$AuthenticatedUserDataCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$AuthenticatedUserData>
    implements _$$AuthenticatedUserDataCopyWith<$Res> {
  __$$AuthenticatedUserDataCopyWithImpl(_$AuthenticatedUserData _value,
      $Res Function(_$AuthenticatedUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? email = null,
    Object? name = null,
    Object? avatarPath = freezed,
  }) {
    return _then(_$AuthenticatedUserData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedUserData extends AuthenticatedUserData {
  const _$AuthenticatedUserData(
      {@JsonKey(toJson: Converters.id, includeIfNull: false) this.id,
      @TimestampConverter() @JsonKey(name: 'creation_date') this.creationDate,
      @TimestampConverter()
      @JsonKey(name: 'last_update_date')
      this.lastUpdateDate,
      required this.email,
      required this.name,
      this.avatarPath,
      final String? $type})
      : $type = $type ?? 'authenticated',
        super._();

  factory _$AuthenticatedUserData.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserDataFromJson(json);

  @override
  @JsonKey(toJson: Converters.id, includeIfNull: false)
  final String? id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'creation_date')
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  @JsonKey(name: 'last_update_date')
  final DateTime? lastUpdateDate;
  @override
  final String email;
  @override
  final String name;
  @override
  final String? avatarPath;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authenticated(id: $id, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, email: $email, name: $name, avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, creationDate, lastUpdateDate, email, name, avatarPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserDataCopyWith<_$AuthenticatedUserData> get copyWith =>
      __$$AuthenticatedUserDataCopyWithImpl<_$AuthenticatedUserData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)
        authenticated,
    required TResult Function() anonymous,
    required TResult Function() loading,
  }) {
    return authenticated(
        id, creationDate, lastUpdateDate, email, name, avatarPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult? Function()? anonymous,
    TResult? Function()? loading,
  }) {
    return authenticated?.call(
        id, creationDate, lastUpdateDate, email, name, avatarPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult Function()? anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(
          id, creationDate, lastUpdateDate, email, name, avatarPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserDataToJson(
      this,
    );
  }
}

abstract class AuthenticatedUserData extends User {
  const factory AuthenticatedUserData(
      {@JsonKey(toJson: Converters.id, includeIfNull: false) final String? id,
      @TimestampConverter()
      @JsonKey(name: 'creation_date')
      final DateTime? creationDate,
      @TimestampConverter()
      @JsonKey(name: 'last_update_date')
      final DateTime? lastUpdateDate,
      required final String email,
      required final String name,
      final String? avatarPath}) = _$AuthenticatedUserData;
  const AuthenticatedUserData._() : super._();

  factory AuthenticatedUserData.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserData.fromJson;

  @JsonKey(toJson: Converters.id, includeIfNull: false)
  String? get id;
  @TimestampConverter()
  @JsonKey(name: 'creation_date')
  DateTime? get creationDate;
  @TimestampConverter()
  @JsonKey(name: 'last_update_date')
  DateTime? get lastUpdateDate;
  String get email;
  String get name;
  String? get avatarPath;
  @JsonKey(ignore: true)
  _$$AuthenticatedUserDataCopyWith<_$AuthenticatedUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnonymousUserDataCopyWith<$Res> {
  factory _$$AnonymousUserDataCopyWith(
          _$AnonymousUserData value, $Res Function(_$AnonymousUserData) then) =
      __$$AnonymousUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnonymousUserDataCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$AnonymousUserData>
    implements _$$AnonymousUserDataCopyWith<$Res> {
  __$$AnonymousUserDataCopyWithImpl(
      _$AnonymousUserData _value, $Res Function(_$AnonymousUserData) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AnonymousUserData extends AnonymousUserData {
  const _$AnonymousUserData({final String? $type})
      : $type = $type ?? 'anonymous',
        super._();

  factory _$AnonymousUserData.fromJson(Map<String, dynamic> json) =>
      _$$AnonymousUserDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.anonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnonymousUserData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)
        authenticated,
    required TResult Function() anonymous,
    required TResult Function() loading,
  }) {
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult? Function()? anonymous,
    TResult? Function()? loading,
  }) {
    return anonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult Function()? anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnonymousUserDataToJson(
      this,
    );
  }
}

abstract class AnonymousUserData extends User {
  const factory AnonymousUserData() = _$AnonymousUserData;
  const AnonymousUserData._() : super._();

  factory AnonymousUserData.fromJson(Map<String, dynamic> json) =
      _$AnonymousUserData.fromJson;
}

/// @nodoc
abstract class _$$LoadingUserDataCopyWith<$Res> {
  factory _$$LoadingUserDataCopyWith(
          _$LoadingUserData value, $Res Function(_$LoadingUserData) then) =
      __$$LoadingUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUserDataCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LoadingUserData>
    implements _$$LoadingUserDataCopyWith<$Res> {
  __$$LoadingUserDataCopyWithImpl(
      _$LoadingUserData _value, $Res Function(_$LoadingUserData) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingUserData extends LoadingUserData {
  const _$LoadingUserData({final String? $type})
      : $type = $type ?? 'loading',
        super._();

  factory _$LoadingUserData.fromJson(Map<String, dynamic> json) =>
      _$$LoadingUserDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingUserData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)
        authenticated,
    required TResult Function() anonymous,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult? Function()? anonymous,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
            @TimestampConverter()
            @JsonKey(name: 'creation_date')
            DateTime? creationDate,
            @TimestampConverter()
            @JsonKey(name: 'last_update_date')
            DateTime? lastUpdateDate,
            String email,
            String name,
            String? avatarPath)?
        authenticated,
    TResult Function()? anonymous,
    TResult Function()? loading,
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
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingUserDataToJson(
      this,
    );
  }
}

abstract class LoadingUserData extends User {
  const factory LoadingUserData() = _$LoadingUserData;
  const LoadingUserData._() : super._();

  factory LoadingUserData.fromJson(Map<String, dynamic> json) =
      _$LoadingUserData.fromJson;
}
