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

--toggle alex's bedroom
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