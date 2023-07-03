local env = require("env")

--alex's bedroom
function toggleAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/toggle"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom"}'
  hs.http.post(url, body, headers)
end

function dimAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/turn_on"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom", "brightness_step": -40}'
  hs.http.post(url, body, headers)
end

function brightenAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/turn_on"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom", "brightness_step": 40}'
  hs.http.post(url, body, headers)
end

--alex's desk lamp
function toggleAlexDeskLamp()
    local url = env.HASS_URL .. "/api/services/light/toggle"
    local headers = {
      ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
      ["Content-Type"] = "application/json"
    }
    local body = '{"entity_id": "light.alexs_desk_lamp"}'
    hs.http.post(url, body, headers)
  end


--keybindings
hs.hotkey.bind({"cmd", "ctrl"}, "1", toggleAlexBedroom)
hs.hotkey.bind({"cmd", "ctrl"}, "-", dimAlexBedroom)
hs.hotkey.bind({"cmd", "ctrl"}, "=", brightenAlexBedroom)
hs.hotkey.bind({"cmd", "ctrl"}, "2", toggleAlexDeskLamp)