import 'package:habitat/infra/servicelocator/service_locator.dart';

/// A mixin for an initializers class that will be initializer
/// in application level
///
/// Please note that this will be an execution point,
/// you can use [ServiceLocator] as the class to strategize the initialization
/// 
/// For example:
/// ```dart
/// class NetworkClientModule with AppInitializer {
/// 
/// @override
/// void init() {
///   ServiceLocator.register(() => SomethingBig());
/// }
/// ```
/// 
/// Then we can get it asyncrhonously in our application with
/// ```dart
/// final something = ServiceLocator.getAsync<SomethingBig>()
/// ```
mixin AppInitializer {
  void init();
}
