import 'package:flutter_test/flutter_test.dart';
import 'package:system_control/system_control.dart';
import 'package:system_control/system_control_platform_interface.dart';
import 'package:system_control/system_control_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSystemControlPlatform
    with MockPlatformInterfaceMixin
    implements SystemControlPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SystemControlPlatform initialPlatform = SystemControlPlatform.instance;

  test('$MethodChannelSystemControl is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSystemControl>());
  });

  test('getPlatformVersion', () async {
    SystemControl systemControlPlugin = SystemControl();
    MockSystemControlPlatform fakePlatform = MockSystemControlPlatform();
    SystemControlPlatform.instance = fakePlatform;

    expect(await systemControlPlugin.getPlatformVersion(), '42');
  });
}
