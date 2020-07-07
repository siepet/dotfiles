hyper2 = {"cmd", "shift"}

function _bindLaunchOrFocus(key, appName)
  hs.hotkey.bind(hyper2, key, function()
    hs.application.launchOrFocus(appName)
  end)
end

local appKeys = {
  G = "Google Chrome",
  S = "Slack",
  V = "Code",
  C = "Visual Studio Code"
}

for key, app in pairs(appKeys) do
  _bindLaunchOrFocus(key, app)
end
