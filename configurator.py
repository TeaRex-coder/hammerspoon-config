import os

file_path = os.path.expanduser("~/.hammerspoon/init.lua")
header = """--notify user during config reload
hs.alert.show("Hammerspoon Config Loaded")

--define hyper
Hyper = {"cmd", "alt", "ctrl"}

--reload binding
hs.hotkey.bind(Hyper, "R", hs.reload)
"""

def add_app():
  app_name = input("Enter the name of the app: ")
  hotkey = input("Enter the hotkey you want to use (e.g. 'F') + hyper: ").upper()
  with open(file_path, "a") as f:
    f.write("""
hs.hotkey.bind(Hyper, '{}', function()
   hs.application.launchOrFocus('{}')
end)
""".format(hotkey, app_name))

def dns_toggle():
    dns1 = input("Enter the ip address of the first DNS server: ")
    dns1_name = input("What do you want to name this server: ")
    dns2 = input("Enter the ip address of the second DNS server: ")
    dns2_name = input("What do you want to name this server: ")
    hotkey = input("Enter the hotkey you want to use (e.g. 'F') + hyper: ").upper()
    dns_content = """
dns1 = "{}"
dns2 = "{}"

local dns = dns1

local function setDNS(dnsServer)
   hs.execute("networksetup -setdnsservers Wi-Fi " .. dnsServer)
end

local function toggleDNS()
   if dns == dns1 then
      dns = dns2
      hs.alert.show("DNS {}")
   else
      dns = dns1
      hs.alert.show("DNS {}")
   end
   setDNS(dns)
end
""".format(dns1, dns2, dns1_name, dns2_name)
    with open(file_path, "a") as f:
      f.write(dns_content)

if os.path.exists(file_path):
  choice = input("init.lua already exists. Enter 1 to erase and restart, 2 to add new macros: ")
  if choice == "1":
    with open(file_path, "w") as f:
      f.write(header)
else:
  with open(file_path, "w") as f:
    f.write(header)

while True:
  choice = input("Enter 1 to add apps, 2 to add DNS toggle, 3 to exit: ")
  if choice == "1":
    add_app()
  elif choice == "2":
    dns_toggle()
  elif choice == "3":
    break
  else:
    print("Invalid choice. Try again.")

print("init.lua saved in ~/.hammerspoon")
