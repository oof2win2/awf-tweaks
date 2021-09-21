local handler = require("event_handler")
_C = require("common")

for _, addonName in  ipairs(_C.addons) do
	local addon = _C.opt_require(addonName .. ".control")
	if addon and settings.startup[addonName].value then handler.add_lib(addon) end
end