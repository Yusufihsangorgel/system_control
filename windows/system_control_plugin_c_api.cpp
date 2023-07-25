#include "include/system_control/system_control_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "system_control_plugin.h"

void SystemControlPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  system_control::SystemControlPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
