_C = require("common")

for _, addon in  ipairs(_C.addons) do
	_C.opt_require(addon .. ".data-final-fixes")
end