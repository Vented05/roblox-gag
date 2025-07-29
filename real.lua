local G2L = {}

-- No key folder/file checking or key module loading here

local kSpoof = game:GetService("HttpService"):GenerateGUID(false)
local KORONIS_SAVEKEY = false  -- This won't be used but kept for UI toggle

-- Create UI (unchanged)
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
G2L["1"].Name = kSpoof
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- NotificationHolder Frame
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"].BorderSizePixel = 0
G2L["2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["2"].AnchorPoint = Vector2.new(0.5, 1)
G2L["2"].Size = UDim2.new(0.54102, 0, 0.17284, 0)
G2L["2"].Position = UDim2.new(0.5, 0, 0.85, 0)
G2L["2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["2"].Name = "NotificationHolder"
G2L["2"].BackgroundTransparency = 1
G2L["2"].ZIndex = 999

-- UIListLayout and UIPadding inside NotificationHolder (unchanged)
G2L["3"] = Instance.new("UIListLayout", G2L["2"])
G2L["3"].HorizontalAlignment = Enum.HorizontalAlignment.Center
G2L["3"].Padding = UDim.new(0, 5)
G2L["3"].VerticalAlignment = Enum.VerticalAlignment.Center
G2L["3"].SortOrder = Enum.SortOrder.LayoutOrder

G2L["4"] = Instance.new("UIPadding", G2L["2"])
G2L["4"].PaddingTop = UDim.new(0, 3)
G2L["4"].PaddingRight = UDim.new(0, 3)
G2L["4"].PaddingLeft = UDim.new(0, 3)
G2L["4"].PaddingBottom = UDim.new(0, 3)

-- Assets folder and NotificationTemplate (unchanged)
G2L["5"] = Instance.new("Folder", G2L["1"])
G2L["5"].Name = "Assets"

G2L["6"] = Instance.new("TextLabel", G2L["5"])
G2L["6"].TextWrapped = true
G2L["6"].BorderSizePixel = 0
G2L["6"].TextSize = 14
G2L["6"].TextScaled = true
G2L["6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["6"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["6"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["6"].BackgroundTransparency = 1
G2L["6"].RichText = true
G2L["6"].Size = UDim2.new(0.02181, 0, 0.27911, 0)
G2L["6"].Visible = false
G2L["6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["6"].Text = "Notification Text!"
G2L["6"].AutomaticSize = Enum.AutomaticSize.X
G2L["6"].Name = "NotificationTemplate"
G2L["6"].Position = UDim2.new(0.45718, 0, 0.36044, 0)

G2L["7"] = Instance.new("UIStroke", G2L["6"])
G2L["7"].Thickness = 2

-- Frame setup (unchanged)
G2L["8"] = Instance.new("Frame", G2L["1"])
G2L["8"].BorderSizePixel = 0
G2L["8"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["8"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["8"].Size = UDim2.new(0, 350, 0, 225)
G2L["8"].Position = UDim2.new(0.5, 0, 0.4992, 0)
G2L["8"].BorderColor3 = Color3.fromRGB(0, 0, 0)

G2L["9"] = Instance.new("UICorner", G2L["8"])

G2L["a"] = Instance.new("UIStroke", G2L["8"])
G2L["a"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["a"].Thickness = 3
G2L["a"].Color = Color3.fromRGB(50, 50, 50)

-- Discord button
G2L["b"] = Instance.new("TextButton", G2L["8"])
G2L["b"].BorderSizePixel = 0
G2L["b"].TextColor3 = Color3.fromRGB(0, 0, 0)
G2L["b"].TextSize = 14
G2L["b"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["b"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["b"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["b"].Size = UDim2.new(0, 45, 0, 45)
G2L["b"].Name = "DISCORD"
G2L["b"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["b"].Text = ""
G2L["b"].Position = UDim2.new(0.11143, 0, 0.82889, 0)

G2L["c"] = Instance.new("UICorner", G2L["b"])

G2L["d"] = Instance.new("UIStroke", G2L["b"])
G2L["d"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["d"].Thickness = 3
G2L["d"].Color = Color3.fromRGB(51, 51, 51)

G2L["e"] = Instance.new("ImageLabel", G2L["b"])
G2L["e"].BorderSizePixel = 0
G2L["e"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["e"].ScaleType = Enum.ScaleType.Fit
G2L["e"].ImageTransparency = 0.06
G2L["e"].Image = "rbxassetid://745203704"
G2L["e"].Size = UDim2.new(0.75, 0, 0.75, 0)
G2L["e"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["e"].BackgroundTransparency = 1
G2L["e"].Position = UDim2.new(0.11111, 0, 0.11111, 0)

-- TextBox for entering key (still present but non-functional)
G2L["f"] = Instance.new("TextBox", G2L["8"])
G2L["f"].CursorPosition = -1
G2L["f"].BorderSizePixel = 0
G2L["f"].TextWrapped = true
G2L["f"].TextSize = 14
G2L["f"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["f"].TextScaled = true
G2L["f"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["f"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["f"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["f"].PlaceholderText = "Enter Key..."
G2L["f"].Size = UDim2.new(0, 200, 0, 35)
G2L["f"].Position = UDim2.new(0.5, 0, 0.4, 0)
G2L["f"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["f"].Text = ""

G2L["10"] = Instance.new("UIStroke", G2L["f"])
G2L["10"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["10"].Thickness = 3
G2L["10"].Color = Color3.fromRGB(50, 50, 50)

G2L["11"] = Instance.new("UICorner", G2L["f"])

G2L["12"] = Instance.new("UITextSizeConstraint", G2L["f"])
G2L["12"].MaxTextSize = 20

-- TextLabel Koronis Hub
G2L["14"] = Instance.new("TextLabel", G2L["8"])
G2L["14"].TextWrapped = true
G2L["14"].BorderSizePixel = 0
G2L["14"].TextSize = 14
G2L["14"].TextScaled = true
G2L["14"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["14"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["14"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["14"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["14"].Size = UDim2.new(0, 200, 0, 34)
G2L["14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["14"].Text = "Koronis Hub"
G2L["14"].Position = UDim2.new(0.5, 0, 0.12, 0)

G2L["15"] = Instance.new("UIPadding", G2L["14"])
G2L["15"].PaddingTop = UDim.new(0, 5)
G2L["15"].PaddingRight = UDim.new(0, 5)
G2L["15"].PaddingLeft = UDim.new(0, 5)
G2L["15"].PaddingBottom = UDim.new(0, 5)

G2L["16"] = Instance.new("UICorner", G2L["14"])

G2L["17"] = Instance.new("UIStroke", G2L["14"])
G2L["17"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["17"].Thickness = 3
G2L["17"].Color = Color3.fromRGB(50, 50, 50)

G2L["18"] = Instance.new("UITextSizeConstraint", G2L["14"])
G2L["18"].MaxTextSize = 20

-- Remember label
G2L["19"] = Instance.new("TextLabel", G2L["8"])
G2L["19"].TextWrapped = true
G2L["19"].BorderSizePixel = 0
G2L["19"].TextSize = 14
G2L["19"].TextXAlignment = Enum.TextXAlignment.Right
G2L["19"].TextScaled = true
G2L["19"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["19"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["19"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["19"].BackgroundTransparency = 1
G2L["19"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["19"].Size = UDim2.new(0, 153, 0, 25)
G2L["19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["19"].Text = "Remember Key?"
G2L["19"].Name = "remember"
G2L["19"].Position = UDim2.new(0.43286, 0, 0.59778, 0)

G2L["1a"] = Instance.new("UIPadding", G2L["19"])
G2L["1a"].PaddingTop = UDim.new(0, 5)
G2L["1a"].PaddingRight = UDim.new(0, 5)
G2L["1a"].PaddingLeft = UDim.new(0, 5)
G2L["1a"].PaddingBottom = UDim.new(0, 5)

G2L["1b"] = Instance.new("UICorner", G2L["19"])

G2L["1c"] = Instance.new("UITextSizeConstraint", G2L["19"])
G2L["1c"].MaxTextSize = 20

-- Submit button
G2L["1d"] = Instance.new("TextButton", G2L["8"])
G2L["1d"].TextWrapped = true
G2L["1d"].BorderSizePixel = 0
G2L["1d"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["1d"].TextSize = 14
G2L["1d"].TextScaled = true
G2L["1d"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["1d"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1d"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["1d"].Size = UDim2.new(0, 158, 0, 45)
G2L["1d"].Name = "SUBMIT"
G2L["1d"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["1d"].Text = "Submit"
G2L["1d"].Position = UDim2.new(0.5, 0, 0.83111, 0)

G2L["1e"] = Instance.new("UICorner", G2L["1d"])

G2L["1f"] = Instance.new("UIStroke", G2L["1d"])
G2L["1f"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["1f"].Thickness = 3
G2L["1f"].Color = Color3.fromRGB(51, 51, 51)

G2L["20"] = Instance.new("UIStroke", G2L["1d"])
G2L["20"].Thickness = 3

G2L["21"] = Instance.new("UITextSizeConstraint", G2L["1d"])
G2L["21"].MaxTextSize = 30

-- Save Login toggle button (non-functional, kept for UI)
G2L["22"] = Instance.new("TextButton", G2L["8"])
G2L["22"].TextWrapped = true
G2L["22"].BorderSizePixel = 0
G2L["22"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["22"].TextSize = 14
G2L["22"].TextScaled = true
G2L["22"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["22"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["22"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["22"].Size = UDim2.new(0, 40, 0, 40)
G2L["22"].Name = "SAVE_LOGIN"
G2L["22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["22"].Text = ""
G2L["22"].Position = UDim2.new(0.72714, 0, 0.59556, 0)

G2L["23"] = Instance.new("ImageLabel", G2L["22"])
G2L["23"].BorderSizePixel = 0
G2L["23"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["23"].Image = "rbxassetid://4458801905"
G2L["23"].Size = UDim2.new(1, 0, 1, 0)
G2L["23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["23"].BackgroundTransparency = 1
G2L["23"].Name = "uncheck"

G2L["24"] = Instance.new("ImageLabel", G2L["22"])
G2L["24"].BorderSizePixel = 0
G2L["24"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["24"].Image = "rbxassetid://4458803195"
G2L["24"].Size = UDim2.new(1, 0, 1, 0)
G2L["24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["24"].BackgroundTransparency = 1
G2L["24"].Name = "check"
G2L["24"].Visible = false

-- Copy Key button (still there but no real effect)
G2L["25"] = Instance.new("TextButton", G2L["8"])
G2L["25"].TextWrapped = true
G2L["25"].BorderSizePixel = 0
G2L["25"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["25"].TextSize = 14
G2L["25"].TextScaled = true
G2L["25"].BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G2L["25"].FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["25"].AnchorPoint = Vector2.new(0.5, 0.5)
G2L["25"].Size = UDim2.new(0, 158, 0, 45)
G2L["25"].Name = "COPY_KEY"
G2L["25"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["25"].Text = "Copy Key"
G2L["25"].Position = UDim2.new(0.5, 0, 0.70889, 0)

G2L["26"] = Instance.new("UICorner", G2L["25"])

G2L["27"] = Instance.new("UIStroke", G2L["25"])
G2L["27"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
G2L["27"].Thickness = 3
G2L["27"].Color = Color3.fromRGB(51, 51, 51)

G2L["28"] = Instance.new("UITextSizeConstraint", G2L["25"])
G2L["28"].MaxTextSize = 30

-- Functions

local function notify(text, time, color)
	local a = G2L["6"]:Clone()
	a.TextColor3 = color or Color3.fromRGB(255, 255, 255)
	a.Text = tostring(text)
	a.Visible = true
	a.Parent = G2L["2"]
	task.delay(time or 3, function()
		if a then
			a:Destroy()
		end
	end)
end

-- Toggle remember key UI (non-functional now)
G2L["19"].MouseEnter:Connect(function()
	G2L["19"].TextColor3 = Color3.fromRGB(255, 150, 150)
end)

G2L["19"].MouseLeave:Connect(function()
	G2L["19"].TextColor3 = Color3.fromRGB(255, 255, 255)
end)

G2L["19"].InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		KORONIS_SAVEKEY = not KORONIS_SAVEKEY
		G2L["23"].Visible = not KORONIS_SAVEKEY
		G2L["24"].Visible = KORONIS_SAVEKEY
	end
end)

G2L["22"].InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		KORONIS_SAVEKEY = not KORONIS_SAVEKEY
		G2L["23"].Visible = not KORONIS_SAVEKEY
		G2L["24"].Visible = KORONIS_SAVEKEY
	end
end)

-- Copy key button just notifies that no key is needed
G2L["25"].MouseButton1Click:Connect(function()
	notify("No key required to use Koronis!", 3, Color3.fromRGB(0, 255, 0))
end)

-- Submit button: Just proceed to load Koronis (simulate)
G2L["1d"].MouseButton1Click:Connect(function()
	-- Optionally you can check if text box is empty and notify, or just ignore
	local inputKey = G2L["f"].Text
	-- Here we ignore the key entirely, just notify and remove UI
	notify("Koronis Hub loaded without key!", 3, Color3.fromRGB(0, 255, 0))
	
	-- Remove UI after 1 second delay
	task.delay(1, function()
		if G2L["1"] then
			G2L["1"]:Destroy()
		end
	end)
	
	-- Here you can place the rest of the Koronis loading code or just leave it as is.
end)
