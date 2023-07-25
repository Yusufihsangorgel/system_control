import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'system_control_method_channel.dart';

abstract class SystemControlPlatform extends PlatformInterface {
  /// Constructs a SystemControlPlatform.
  SystemControlPlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemControlPlatform _instance = MethodChannelSystemControl();

  /// The default instance of [SystemControlPlatform] to use.
  ///
  /// Defaults to [MethodChannelSystemControl].
  static SystemControlPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SystemControlPlatform] when
  /// they register themselves.
  static set instance(SystemControlPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  // Method to shutdown the system
  Future<void> shutdown() {
    throw UnimplementedError('shutdown() has not been implemented.');
  }

  // Method to minimize the application
  Future<void> minimize() {
    throw UnimplementedError('minimize() has not been implemented.');
  }
}
