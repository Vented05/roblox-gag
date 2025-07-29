print("✅ KoronisLoader has started!")

-- Replace with the same mapping you provided earlier
local IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",
    [142823291] = "715b720f239e20ee194665e05b77ad6e",
    [126884695634066] = "8cb305a7f15b76a99ee86609a57e02f8",
    [81440632616906] = "8cb305a7f15b76a99ee86609a57e02f8",
    [89343390950953] = "8cb305a7f15b76a99ee86609a57e02f8",
    [17295191183] = "8cb305a7f15b76a99ee86609a57e02f8"
}

local scriptID = IDs[game.PlaceId] or IDs["Universal"]
local url = "https://sdkapi-public.luarmor.net/scripts/" .. scriptID .. ".lua"
print("📥 Loading Koronis script ID:", scriptID)

local ok, content = pcall(function()
    return game:HttpGet(url)
end)

if not ok or not content then
    warn("🚨 Failed to fetch Koronis script:", content)
    return
end

local fn, err = loadstring(content)
if not fn then
    warn("🚨 Syntax error loading script:", err)
    return
end

print("🚀 Executing Koronis...")
fn()
