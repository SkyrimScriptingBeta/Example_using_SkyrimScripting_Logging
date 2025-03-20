#include <RE/Skyrim.h>
#include <SKSE/SKSE.h>
#include <SKSEPluginInfo.h>
#include <SkyrimScripting/Logging.h>


extern "C" __declspec(dllexport) bool SKSEPlugin_Load(const SKSE::LoadInterface* a_skse) {
    // This line only needed when using NG
    // Note you can pass the plugin name from someplace else if not using SKSEPluginInfo
    SkyrimScripting::Logging::InitializeLogger(SKSEPluginInfo::GetPluginName());

    SKSE::Init(a_skse);
    SKSE::log::info("THIS IS info LOG!");
    return true;
}
