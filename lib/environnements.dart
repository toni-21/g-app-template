import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'environnements.freezed.dart';

const _kEnvironmentInput = String.fromEnvironment('ENV', defaultValue: 'dev');

typedef OnEnvCallback = Future<void> Function();

final environmentProvider = Provider<Environment>(
  (ref) => Environment.fromEnv(),
);

/// The environment of the app.
/// - dev: Development environment
/// - prod: Production environment
/// Feel free to add more environments if needed.
@freezed
sealed class Environment with _$Environment {
  const factory Environment.dev({required String name}) = DevEnvironment;

  const factory Environment.prod({required String name}) = ProdEnvironment;

  const Environment._();

  factory Environment.fromEnv() {
    switch (_kEnvironmentInput) {
      case 'dev':
        return const Environment.dev(name: 'dev');
      case 'prod':
        return const Environment.prod(name: 'production');
      default:
        throw Exception('Unknown environment $_kEnvironmentInput');
    }
  }
}
