--define hyper
hyper = {"cmd", "alt", "ctrl"}


--open Finder hyper + f
hs.hotkey.bind(hyper, "F", function()
    hs.application.open('Finder.app')
end)

--open Chrome hyper + c
hs.hotkey.bind(hyper, "C", function()
    hs.application.open('Google Chrome.app')
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

--open Zoom hyper + Z
hs.hotkey.bind(hyper, "Z", function()
    hs.application.open('zoom.us.app')
end)

--open OBS hyper + O
hs.hotkey.bind(hyper, "O", function()
    hs.application.open('OBS.app')
end)

--open Notion hyper + N
hs.hotkey.bind(hyper, "N", function()
    hs.application.open('Notion.app')
end)

--open Replit hyper + R
hs.hotkey.bind(hyper, "R", function()
    hs.application.open('Replit.app')
end)