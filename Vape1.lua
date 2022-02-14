if game.PlaceId == 6872274481 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
elseif game.PlaceId == 6872274481 then
    -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local buydiamondaxe = Instance.new("TextButton")
local buyironaxe = Instance.new("TextButton")
local buystoneaxe = Instance.new("TextButton")
local buywool = Instance.new("TextButton")
local BuyShears = Instance.new("TextButton")
local woolamount = Instance.new("TextBox")
local woolamt = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:WaitForChild("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

buydiamondaxe.Name = "buydiamondaxe"
buydiamondaxe.Parent = ScreenGui
buydiamondaxe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buydiamondaxe.Position = UDim2.new(0, 0, 0.403965324, 0)
buydiamondaxe.Size = UDim2.new(0, 200, 0, 50)
buydiamondaxe.Font = Enum.Font.SourceSans
buydiamondaxe.Text = "Buy Diamond Axe"
buydiamondaxe.TextColor3 = Color3.fromRGB(0, 0, 0)
buydiamondaxe.TextSize = 14.000

buyironaxe.Name = "buyironaxe"
buyironaxe.Parent = ScreenGui
buyironaxe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buyironaxe.Position = UDim2.new(0, 0, 0.468401521, 0)
buyironaxe.Size = UDim2.new(0, 200, 0, 50)
buyironaxe.Font = Enum.Font.SourceSans
buyironaxe.Text = "Buy Iron Axe"
buyironaxe.TextColor3 = Color3.fromRGB(0, 0, 0)
buyironaxe.TextSize = 14.000

buystoneaxe.Name = "buystoneaxe"
buystoneaxe.Parent = ScreenGui
buystoneaxe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buystoneaxe.Position = UDim2.new(0, 0, 0.530359387, 0)
buystoneaxe.Size = UDim2.new(0, 200, 0, 50)
buystoneaxe.Font = Enum.Font.SourceSans
buystoneaxe.Text = "Buy Stone Axe"
buystoneaxe.TextColor3 = Color3.fromRGB(0, 0, 0)
buystoneaxe.TextSize = 14.000

buywool.Name = "buywool"
buywool.Parent = ScreenGui
buywool.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buywool.Position = UDim2.new(0, 0, 0.653035998, 0)
buywool.Size = UDim2.new(0, 200, 0, 50)
buywool.Font = Enum.Font.SourceSans
buywool.Text = "Buy Wool"
buywool.TextColor3 = Color3.fromRGB(0, 0, 0)
buywool.TextSize = 14.000

woolamount.Name = "woolamount"
woolamount.Parent = ScreenGui
woolamount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
woolamount.Position = UDim2.new(0, 0, 0.592317224, 0)
woolamount.Size = UDim2.new(0, 200, 0, 50)
woolamount.Font = Enum.Font.SourceSans
woolamount.Text = ""
woolamount.TextColor3 = Color3.fromRGB(0, 0, 0)
woolamount.TextSize = 14.000

BuyShears.Name = "BuyShears"
BuyShears.Parent = ScreenGui
BuyShears.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BuyShears.Position = UDim2.new(0, 0, 0.71035998, 0)
BuyShears.Size = UDim2.new(0, 200, 0, 50)
BuyShears.Font = Enum.Font.SourceSans
BuyShears.Text = "Buy Shears"
BuyShears.TextColor3 = Color3.fromRGB(0, 0, 0)
BuyShears.TextSize = 14.000

woolamt.Name = "woolamt"
woolamt.Parent = ScreenGui
woolamt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
woolamt.Position = UDim2.new(0, 0, 0.592317224, 0)
woolamt.Size = UDim2.new(0, 73, 0, 50)
woolamt.Font = Enum.Font.SourceSans
woolamt.Text = "wool amount"
woolamt.TextColor3 = Color3.fromRGB(0, 0, 0)
woolamt.TextSize = 14.000

BuyShears.MouseButton1Click:connect(function()
		local args = {
			[1] = {
				["shopItem"] = {
					["currency"] = "iron",
					["itemType"] = "shears",
					["amount"] = 1,
					["price"] = 30,
					["spawnWithItems"] = {
						[1] = "shears"
					},
					["category"] = "Tools"
				}
			}
		}
		
		game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))
end)

buystoneaxe.MouseButton1Click:connect(function()
	local axetobuy = "stone_axe"
	local price = "20"
	local args = {
		[1] = {
			["shopItem"] = {
				["currency"] = "iron",
				["itemType"] = axetobuy,
				["amount"] = 1,
				["price"] = price,
				["category"] = "Tools",
				["spawnWithItems"] = {
					[1] = axetobuy
				},
				["tiered"] = true
			}
		}
	}

	game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))
end)

buyironaxe.MouseButton1Click:connect(function()
	local axetobuy = "iron_axe"
	local price = "30"
	local args = {
		[1] = {
			["shopItem"] = {
				["currency"] = "iron",
				["itemType"] = axetobuy,
				["amount"] = 1,
				["price"] = price,
				["category"] = "Tools",
				["spawnWithItems"] = {
					[1] = axetobuy
				},
				["tiered"] = true
			}
		}
	}

	game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))
end)

buydiamondaxe.MouseButton1Click:connect(function()
	local axetobuy = "diamond_axe"
	local price = "60"
	local args = {
		[1] = {
			["shopItem"] = {
				["currency"] = "iron",
				["itemType"] = axetobuy,
				["amount"] = 1,
				["price"] = price,
				["category"] = "Tools",
				["spawnWithItems"] = {
					[1] = axetobuy
				},
				["tiered"] = true
			}
		}
	}

	game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))

end)

buywool.MouseButton1Click:connect(function()
		woolamountvalue = tonumber(woolamount.Text)
	if woolamountvalue == nil then woolamountvalue = 1 else woolamountvalue = tonumber(woolamount.Text) end
		for i = 1,woolamountvalue do
			local args = {
				[1] = {
					["shopItem"] = {
						["currency"] = "iron",
						["itemType"] = "wool_white",
						["amount"] = 16,
						["price"] = 8,
						["category"] = "Blocks"
					}
				}
			}

			game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BedwarsPurchaseItem:InvokeServer(unpack(args))
			end
		end)
end