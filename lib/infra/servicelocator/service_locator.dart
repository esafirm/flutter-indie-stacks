import 'package:get_it/get_it.dart';

/// A simple wrapper for GetIt in case we change the actual implementation or
/// want an easier debugging experience.
class ServiceLocator {
  /* GetIt wrapper */
  /* ------------------------------------------ */

  static GetIt get _internalLocator => GetIt.instance;

  static void registerFactory<T extends Object>(
    T Function() func, {
    String? instanceName,
  }) {
    _internalLocator.registerFactory<T>(func, instanceName: instanceName);
  }

  static void registerLazySingleton<T extends Object>(
    T Function() func, {
    String? instanceName,
  }) {
    _internalLocator.registerLazySingleton<T>(func, instanceName: instanceName);
  }

  static T get<T extends Object>({
    String? instanceName,
  }) {
    return _internalLocator.get<T>(instanceName: instanceName);
  }

  static bool isRegistered<T extends Object>() {
    return _internalLocator.isRegistered<T>();
  }
}
