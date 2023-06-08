local env = require("env")

--toggle alex's bedroom
function toggleAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/toggle"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom"}'
  hs.http.post(url, body, headers)
end

hs.hotkey.bind({"cmd", "ctrl"}, "1", toggleAlexBedroom)

function dimAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/turn_on"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom", "brightness_step": -20}'
  hs.http.post(url, body, headers)
end

hs.hotkey.bind({"cmd", "ctrl"}, "-", dimAlexBedroom)

function brightenAlexBedroom()
  local url = env.HASS_URL .. "/api/services/light/turn_on"
  local headers = {
    ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
    ["Content-Type"] = "application/json"
  }
  local body = '{"entity_id": "light.alexs_bedroom", "brightness_step": 20}'
  hs.http.post(url, body, headers)
end

hs.hotkey.bind({"cmd", "ctrl"}, "=", brightenAlexBedroom)

--toggle alex's desk lamp
function toggleAlexDeskLamp()
    local url = env.HASS_URL .. "/api/services/light/toggle"
    local headers = {
      ["Authorization"] = "Bearer " .. env.HASS_TOKEN,
      ["Content-Type"] = "application/json"
    }
    local body = '{"entity_id": "light.alexs_desk_lamp"}'
    hs.http.post(url, body, headers)
  end

hs.hotkey.bind({"cmd", "ctrl"}, "2", toggleAlexDeskLamp)
