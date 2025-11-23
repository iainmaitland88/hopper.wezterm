local wezterm = require("wezterm")

local keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action.SendKey({ key = "b", mods = "ALT" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action.SendKey({ key = "f", mods = "ALT" }),
	},
}

local function apply_to_config(config, _)
	if not config.keys then
		config.keys = {}
	end

	for _, key in ipairs(keys) do
		table.insert(config.keys, key)
	end
end

return {
	apply_to_config = apply_to_config,
}
