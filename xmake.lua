add_rules("mode.debug", "mode.release")

set_languages("c++23")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")
add_repositories("SkyrimScriptingBeta https://github.com/SkyrimScriptingBeta/Packages.git")

add_requires("SkyrimScripting.Logging", {configs = { commonlib = "skyrim-commonlib-ng" }})
-- add_requires("SkyrimScripting.Logging", {configs = { commonlib = "skyrim-commonlib-ae" }})
    
mod_info = {
    name = "Example using SkyrimScripting.Logging",
    version = "0.0.1",
    author = "Mrowr Purr",
    email = "mrowr.purr@gmail.com"
}

skyrim_versions = {"ng"}
-- skyrim_versions = {"ae"}

includes("skse.lua")
