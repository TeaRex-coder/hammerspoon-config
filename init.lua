local env = require("app_launcher")
local env = require("home_assistant")
local env = require("miscellaneous")

--notify user during config reload
hs.alert.show("Hammerspoon Config Loaded")

--define hyper
hyper = {"cmd", "alt", "ctrl"}

--reload binding
hs.hotkey.bind(hyper, "\\", hs.reload)