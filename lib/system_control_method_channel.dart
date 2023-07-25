import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'system_control_platform_interface.dart';

/// An implementation of [SystemControlPlatform] that uses method channels.
class MethodChannelSystemControl extends SystemControlPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_control');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  // Method to shutdown the system
  Future<void> shutdown() async {
    await methodChannel.invokeMethod<void>('shutdown');
  }

  // Method to minimize the application
  Future<void> minimize() async {
    await methodChannel.invokeMethod<void>('minimize');
  }
}
