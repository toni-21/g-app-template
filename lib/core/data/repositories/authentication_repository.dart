import 'package:apparence_kit/core/data/models/user.dart' as app;
import 'package:apparence_kit/core/data/models/user.dart';
import 'package:apparence_kit/core/initializer/onstart_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final authRepositoryProvider =
    StateNotifierProvider<AuthenticationRepository, app.User>(
  (Ref ref) => AuthenticationRepository.fromInstance(),
);

class AuthenticationRepository extends StateNotifier<app.User>
    implements OnStartService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  AuthenticationRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger,
        super(const app.User.loading());

  factory AuthenticationRepository.fromInstance() {
    return AuthenticationRepository(
      firestore: FirebaseFirestore.instance,
      firebaseAuth: FirebaseAuth.instance,
      logger: Logger(),
    );
  }

  @override
  Future<void> init() async {
    _listenUserChanges().listen((user) {
      user.map(
        authenticated: (el) => _logger.i('User authenticated: ${el.id}'),
        anonymous: (_) => _logger.i('Anonymous user state'),
        loading: (_) => _logger.i('Loading user state'),
      );
      state = user;
    });
    while (state is LoadingUserData) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  CollectionReference<app.User> get collection =>
      _firestore.collection('users').withConverter(
            fromFirestore: (snapshot, options) {
              final data = snapshot.data()!;
              return app.User.fromJson({
                ...data,
                'id': snapshot.id,
              });
            },
            toFirestore: (app.User user, _) => user.toJson(),
          );

  Future<void> signup(String email, String password) async {
    final logger = Logger();
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = app.User.authenticated(
        id: userCredential.user!.uid,
        email: email,
        name: '',
        creationDate: DateTime.now(),
        lastUpdateDate: DateTime.now(),
      );
      await collection.doc(userCredential.user!.uid).set(user);
    } on FirebaseAuthException catch (e) {
      logger.e(e);
      switch (e.code) {
        case 'weak-password':
          throw SignupException("Password is too weak");
        case 'invalid-email':
          throw SignupException("Invalid email");
        case 'email-already-in-use':
        case 'operation-not-allowed':
        case 'provider-already-linked':
        case 'invalid-credential':
        case 'redential-already-in-use':
          // for security reasons, we don't want to give too much information
          throw SignupException("Invalid credentials");
      }
      throw SignupException("Erreur inconnue");
    } catch (err, trace) {
      logger.e(err, stackTrace: trace);
      throw SignupException("Error creating account");
    }
  }

  Future<void> signin(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw SigninException(e.message ?? 'Error while signing in');
    }
  }

  Stream<app.User> _listenUserChanges() {
    return _firebaseAuth.authStateChanges().asyncMap((event) async {
      if (event == null) {
        return const app.User.anonymous();
      }
      final userDoc = await collection.doc(event.uid).get();
      return userDoc.data()!;
    });
  }

  Future<void> logout() {
    return _firebaseAuth.signOut();
  }
}

class SigninException implements Exception {
  final String message;

  SigninException(this.message);
}

class SignupException implements Exception {
  final String message;

  SignupException(this.message);
}

class DeleteAccountException implements Exception {
  final String message;

  DeleteAccountException(this.message);
}
