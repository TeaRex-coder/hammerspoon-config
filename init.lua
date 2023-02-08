--notify user during config reload
hs.alert.show("Hammerspoon Config Loaded")

--define hyper
hyper = {"cmd", "alt", "ctrl"}

--reload binding
hs.hotkey.bind(hyper, "R", hs.reload)

--application launching
    --open Finder hyper + f
hs.hotkey.bind(hyper, "F", function()
    hs.application.open('Finder.app')
end)

    --open Chrome hyper + c
hs.hotkey.bind(hyper, "C", function()
    hs.application.open('Chrome.app')
end)

    --open Google Meet hyper + m
hs.hotkey.bind(hyper, "M", function()
    hs.application.open('Google Meet.app')
end)
    
    --open iTerm hyper + t
hs.hotkey.bind(hyper, "T", function()
    hs.application.open('iTerm.app')
end)

    --open Keychain hyper + k
hs.hotkey.bind(hyper, "K", function()
    hs.application.open('Keychain Access.app')
end)

    --open Keychain hyper + k
hs.hotkey.bind(hyper, "K", function()
    hs.application.open('Keychain Access.app')
end)

    --open Arc hyper + a
hs.hotkey.bind(hyper, "A", function()
hs.application.open('Arc.app')
end)

    --open Visual Studio hyper + v
hs.hotkey.bind(hyper, "V", function()
hs.application.open('Visual Studio Code.app')
end)

    --open Slack hyper + s
hs.hotkey.bind(hyper, "S", function()
hs.application.open('Slack.app')
end)

    --open Notion hyper + n
hs.hotkey.bind(hyper, "Z", function()
hs.application.open('zoom.us.app')
end)
