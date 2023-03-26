--notify user during config reload
hs.alert.show("Hammerspoon Config Loaded")

--define hyper
hyper = {"cmd", "alt", "ctrl"}

--reload binding
hs.hotkey.bind(hyper, "\\", hs.reload)


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


--miscelaneas
    -- open new Slack window
local function SlackWindow()
    hs.execute("open -n /Applications/Slack.app")
  end
  
hs.hotkey.bind({"ctrl", "shift"}, "n", function()
    local slack = hs.application.get("Slack")
    if slack ~= nil and slack:isFrontmost() then
      SlackWindow()
    end
  end)

    -- macbook display smaller
hs.hotkey.bind(hyper, "[", function()
  hs.execute("/usr/local/bin/displayplacer 'id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:2048x1280 hz:60 color_depth:8 scaling:off origin:(-2048,0) degree:0'")
end)

    -- macbook display smaller
hs.hotkey.bind(hyper, "]", function()
    hs.execute("/usr/local/bin/displayplacer 'id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1680x1050 hz:60 color_depth:8 scaling:on origin:(0,0) degree:0'")
end)


    --toggle between dns serverss
dns1 = "10.0.0.25"
dns2 = "1.1.1.1"

local dns = dns1

local function setDNS(dnsServer)
   hs.execute("networksetup -setdnsservers Wi-Fi " .. dnsServer)
end

local function toggleDNS()
   if dns == dns1 then
      dns = dns2
      hs.alert.show("DNS Cloudflare")
   else
      dns = dns1
      hs.alert.show("DNS Pi-Hole")
   end
   setDNS(dns)
end

hs.hotkey.bind(hyper, "d", toggleDNS)
