
print("KoronisLoader.lua has loaded")

local module = {}

-- Map Roblox PlaceId to Koronis Script IDs
module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",       -- Universal | Koronis Hub
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",        -- Collect All Pets | Koronis Hub
    [142823291] = "715b720f239e20ee194665e05b77ad6e",         -- Murder Mystery 2 | Koronis Hub
    [126884695634066] = "8cb305a7f15b76a99ee86609a57e02f8",   -- Grow A Garden | Loader
    [81440632616906] = "8cb305a7f15b76a99ee86609a57e02f8",    -- Dig to Earth's Core | Loader
    [89343390950953] = "8cb305a7f15b76a99ee86609a57e02f8",    -- My Singing Brainrot | Loader
    [17295191183] = "8cb305a7f15b76a99ee86609a57e02f8"        -- Ultimate Town Multiplayer | Loader
}

-- Select ScriptID based on current PlaceId or fallback to Universal
local placeId = game.PlaceId
local scriptID = module.IDs[placeId] or module.IDs["Universal"]

-- Function to load Koronis script directly (no key check)
function module.loadKoronis()
    local url = "https://sdkapi-public.luarmor.net/scripts/" .. scriptID .. ".lua"
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    if success and response then
        local func, err = loadstring(response)
        if func then
            func()
        else
            warn("Failed to load Koronis script: Syntax error", err)
        end
    else
        warn("Failed to fetch Koronis script:", response)
    end
end

return module
