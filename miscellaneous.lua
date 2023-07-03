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