#ifndef FLUTTER_PLUGIN_SYSTEM_CONTROL_PLUGIN_H_
#define FLUTTER_PLUGIN_SYSTEM_CONTROL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace system_control {

class SystemControlPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SystemControlPlugin();

  virtual ~SystemControlPlugin();

  // Disallow copy and assign.
  SystemControlPlugin(const SystemControlPlugin&) = delete;
  SystemControlPlugin& operator=(const SystemControlPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace system_control

#endif  // FLUTTER_PLUGIN_SYSTEM_CONTROL_PLUGIN_H_
