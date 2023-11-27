import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/core/initializer/onstart_widget.dart';
import 'package:apparence_kit/environnements.dart';
import 'package:apparence_kit/firebase_options_dev.dart' as firebase_dev;
import 'package:apparence_kit/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final env = Environment.fromEnv();
  final logger = Logger();
  logger.i('Starting app in ${env.name} mode');
  // I like to force portrait mode on mobile devices
  // What is the last time you used an app in landscape mode?
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );

  //@kit[firebase]
  await env.when(
    dev: (_) => Firebase.initializeApp(
      options: firebase_dev.DefaultFirebaseOptions.currentPlatform,
    ),
    prod: (_) => Firebase.initializeApp(),
  );

  // await initializeDateFormatting('fr');
  // TODO force this from device language or fallback to english

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Starter Kit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'home',
      builder: (context, child) => Initializer(
        services: [
          authRepositoryProvider.notifier,
        ],
        onReady: child!,
        onLoading: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      onGenerateRoute: routes,
    );
  }
}
