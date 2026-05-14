import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/core/models/result.dart';
import 'package:task_app/models/auth_data.dart';
import 'package:task_app/services/auth_api_services.dart';

final authApiServiceProvider = Provider<AuthApiServices>(
  (ref) => AuthApiServices()
);

final authProvider = NotifierProvider<AuthProvider, AsyncValue<AuthData?>>(
  AuthProvider.new
);

class AuthProvider extends Notifier<AsyncValue<AuthData?>> {
  @override
  AsyncValue<AuthData?> build() => const AsyncData(null);
  

  Future<Result<AuthData?>> login ({
    required String email,
    required String password,
  }) async {
    state = AsyncLoading();

    try {
      final result = await ref
      .read(authApiServiceProvider)
      .login(
        email: email, 
        password: password
      );

      state = switch (result) {
        Success(:final value) => AsyncData(value),
        Failure(:final exception) => AsyncError(
          exception, .current,
          ),
      };

      return result;
    } on Exception catch (e,stackTrace) {
      state = AsyncError(e, stackTrace);
      return Failure(e);
    }
  }

  Future<Result<void>> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    final authData = state.value;
    state = const AsyncLoading();

      try {
        final result = await ref
        .read(authApiServiceProvider)
        .signup(
          email: email, 
          password: password, 
          name: name,
          );
        state = switch (result) {
        Success(:final value) => AsyncData(authData),
        Failure(:final exception) => AsyncError(
          exception, .current,
          ),
      };
        return result;
      } on Exception catch (e,stackTrace) {
        state = AsyncError(e, stackTrace);
        return Failure(e);
      }
  }
}
  