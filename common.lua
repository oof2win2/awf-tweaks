local Common = {}

--[[-- Calls a require that will not error if the file is not found
@usage local file = opt_require('file.not.present') -- will not cause any error
@tparam string path the path that you want to require
@return the returns from that file or nil, error if not loaded
@usage-- Require a file without causing errors, for when a file might not exist
local Module = opt_require 'expcore.common'
]]
function Common.opt_require(path)
    local success, rtn = pcall(require, path)
    if success then return rtn
    else return nil, rtn end
end

Common.addons = {
	"awf-oarc",
    "tier2-hell"
}

return Common