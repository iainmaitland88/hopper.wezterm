# hopper.wezterm

A super duper simple wezterm plugin to jump over words with arrow keys.

## Installation
Add the lines below to your `wezterm.lua` config.

```lua
-- your normal config
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- install hopper
wezterm.plugin.require("https://github.com/iainmaitland88/hopper.wezterm").apply_to_config(config)

return config
```

You should probably vendor this repo by forking it or cloning it to your wezterm config directory. If you do, update
the line that installs hopper to reference where the vendored plugin lives

```lua
-- vendor to your own repo
wezterm.plugin.require("https://github.com/your-name-here/hopper.wezterm").apply_to_config(config)

-- or to ~/.config/wezterm/plugins/hopper/ on your machine
wezterm.plugin.require("plugins.hopper.plugin").apply_to_config(config)
```
