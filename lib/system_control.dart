import 'system_control_platform_interface.dart';

class SystemControl {
  Future<String?> getPlatformVersion() {
    return SystemControlPlatform.instance.getPlatformVersion();
  }

  // Shutdown the system
  Future<void> shutdown() {
    return SystemControlPlatform.instance.shutdown();
  }

  // Minimize the application
  Future<void> minimize() {
    return SystemControlPlatform.instance.minimize();
  }
}
