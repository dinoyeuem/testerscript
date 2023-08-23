do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("GoostUi")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local GoostUi = Instance.new("ScreenGui")
GoostUi.Name = "GoostUi"
GoostUi.Parent = game:GetService("CoreGui").RobloxGui.Modules
GoostUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Create = {}
	function Create:CreateLoading(LoadingStatr)
		if LoadingStatr == true then
		local PageLoading = Instance.new("Frame")
		PageLoading.Name = "Main"
		PageLoading.Parent = GoostUi
		PageLoading.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
		PageLoading.BorderSizePixel = 0
		PageLoading.Position = UDim2.new(0.330043197, 0, 0.254589975, 0)
		PageLoading.Size = UDim2.new(0, 550, 0, 400)
		PageLoading.Visible = true
		PageLoading.ClipsDescendants = true

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 8)
		UICorner.Parent = PageLoading

		local Frame = Instance.new("Frame")
		Frame.Parent = PageLoading
		Frame.BackgroundColor3 = Color3.fromRGB(120,120,200)
		Frame.BorderSizePixel = 0
		Frame.AnchorPoint = Vector2.new(0.5,0.5)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.Size = UDim2.new(0, 1, 0, 1)
		Frame.BackgroundTransparency = 1

		local Frame1 = Instance.new("Frame")
		Frame1.Parent = Frame
		Frame1.BackgroundColor3 = Color3.fromRGB(120,120,200)
		Frame1.BorderSizePixel = 0
		Frame1.AnchorPoint = Vector2.new(0.5,0.5)
		Frame1.Position = UDim2.new(0.275, 0, 0.275, 0)
		Frame1.Size = UDim2.new(0, 45, 0, 45)

		local Frame2 = Instance.new("Frame")
		Frame2.Parent = Frame
		Frame2.BackgroundColor3 = Color3.fromRGB(120,120,200)
		Frame2.BorderSizePixel = 0
		Frame2.AnchorPoint = Vector2.new(0.5,0.5)
		Frame2.Position = UDim2.new(0.275, 0, 0.725, 0)
		Frame2.Size = UDim2.new(0, 45, 0, 45)

		local Frame3 = Instance.new("Frame")
		Frame3.Parent = Frame
		Frame3.BackgroundColor3 = Color3.fromRGB(120,120,200)
		Frame3.BorderSizePixel = 0
		Frame3.AnchorPoint = Vector2.new(0.5,0.5)
		Frame3.Position = UDim2.new(0.725, 0, 0.725, 0)
		Frame3.Size = UDim2.new(0, 45, 0, 45)

		local Frame4 = Instance.new("Frame")
		Frame4.Parent = Frame
		Frame4.BackgroundColor3 = Color3.fromRGB(120,120,200)
		Frame4.BorderSizePixel = 0
		Frame4.AnchorPoint = Vector2.new(0.5,0.5)
		Frame4.Position = UDim2.new(0.725, 0, 0.275, 0)
		Frame4.Size = UDim2.new(0, 45, 0, 45)

		local secondsElapsed = 0
		local timeout = 2
		
		while true do
		wait(0.5)
		TweenService:Create(
			Frame,
			TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Rotation = 0}
		):Play() wait(0.1)
		TweenService:Create(
			Frame,
			TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Visible = true}
		):Play()
		TweenService:Create(
			Frame,
			TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Size = UDim2.new(0, 1, 0, 1)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame,
			TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Size = UDim2.new(0, 100, 0, 100)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame,
			TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play() wait(0.5)

		TweenService:Create(
			Frame1,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.95,0.95)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame1,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(10,10,10)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame1,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.5,0.5)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame1,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(120,120,200)}
		):Play() wait(0.3)

		TweenService:Create(
			Frame2,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.95,0.05)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame2,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(10,10,10)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame2,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.5,0.5)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame2,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(120,120,200)}
		):Play() wait(0.3)

		TweenService:Create(
			Frame3,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.05,0.05)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame3,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(10,10,10)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame3,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.5,0.5)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame3,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(120,120,200)}
		):Play() wait(0.3)

		TweenService:Create(
			Frame4,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.25,0.95)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame4,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(10,10,10)}
		):Play() wait(0.3)
		TweenService:Create(
			Frame4,
			TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0.5,0.5)}
		):Play() wait(0.2)
		TweenService:Create(
			Frame4,
			TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(120,120,200)}
		):Play() wait(0.3)
		--
		TweenService:Create(
			Frame,
			TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{BackgroundTransparency = 0}
		):Play()
		TweenService:Create(
			Frame,
			TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Rotation = 315}
		):Play() wait(1.2)
		TweenService:Create(
			Frame,
			TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Size = UDim2.new(0, 1, 0, 1)}
		):Play() wait(0.675)
		TweenService:Create(
			Frame,
			TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
			{Visible = false}
		):Play()

		secondsElapsed = secondsElapsed + 1
		
		if secondsElapsed == timeout then
			TweenService:Create(
				Frame,
				TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{Visible = false}
			):Play() wait(0.5)
			TweenService:Create(
				PageLoading,
				TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 550, 0, 0)}
			):Play()

			break
				end
			end
		end
    function Create:window()
        local FocusUI = false ;
        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = GoostUi
        Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(0.330043197, 0, 0.254589975, 0)
        Main.Size = UDim2.new(0, 550, 0, 0)
        Main.Visible = true
        Main.ClipsDescendants = true

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Main
        
        local PageTab = Instance.new("Frame")
        PageTab.Name = "PageTab"
        PageTab.Parent = Main
        PageTab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        PageTab.BorderSizePixel = 0
        PageTab.Size = UDim2.new(0, 550, 0, 40)

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = PageTab

        local PageTabFrame = Instance.new("Frame")
        PageTabFrame.Parent = PageTab
        PageTabFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        PageTabFrame.BackgroundTransparency = 0
        PageTabFrame.BorderSizePixel = 0
        PageTabFrame.Position = UDim2.new(0, 0, 0.5, 0)
        PageTabFrame.Size = UDim2.new(0, 550, 0, 20)

        local Logo = Instance.new("ImageLabel")
        Logo.Name = "Logo"
        Logo.Parent = PageTab
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.Size = UDim2.new(0, 40, 0, 40)
        Logo.Image = "http://www.roblox.com/asset/?id=13377314456"

        local Scrolling_PageTab = Instance.new("ScrollingFrame")
        Scrolling_PageTab.Parent = PageTab
        Scrolling_PageTab.Active = true
        Scrolling_PageTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Scrolling_PageTab.BackgroundTransparency = 1.000
        Scrolling_PageTab.BorderSizePixel = 0
        Scrolling_PageTab.Position = UDim2.new(0.0727272704, 0, 0, 0)
        Scrolling_PageTab.Size = UDim2.new(0, 510, 0, 43)
        Scrolling_PageTab.BottomImage = ""
        Scrolling_PageTab.CanvasSize = UDim2.new(2, 0, 0, 0)
        Scrolling_PageTab.ScrollBarThickness = 3
        Scrolling_PageTab.TopImage = ""

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Scrolling_PageTab
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)

        local UIPadding = Instance.new("UIPadding")
        UIPadding.Parent = Scrolling_PageTab
        UIPadding.PaddingLeft = UDim.new(0, 7)
        UIPadding.PaddingTop = UDim.new(0, 7)

		Scrolling_PageTab.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			Scrolling_PageTab.CanvasSize =  UDim2.new(0,UIListLayout.AbsoluteContentSize.X +10,0,0)
		end);

		local PageOrders = -1

		local Container_Page = Instance.new("Frame",Main)
		Container_Page.Name = ""
		Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container_Page.Size = UDim2.new(0, 530, 0, 340)
		Container_Page.BackgroundTransparency = 1
		Container_Page.Position = UDim2.new(0.5, 0, 0.5, 0)
		Container_Page.AnchorPoint = Vector2.new(0.5, 0.4525)

		local PageFolder = Instance.new("Folder")
		PageFolder.Parent = Container_Page

		local UIPage = Instance.new('UIPageLayout',PageFolder)
		UIPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIPage.EasingDirection = Enum.EasingDirection.InOut
		UIPage.EasingStyle = Enum.EasingStyle.Quad
		UIPage.Padding = UDim.new(0.5, 0)
		UIPage.TweenTime = 0.5

		MakeDraggable(PageTab,Main)
		local tween = game:GetService("TweenService")
		local library = {currenttab = '',toggledui = false}
		tween:Create(Main,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = UDim2.new(0, 550, 0, 400)}):Play()
	
		game:GetService("UserInputService").InputBegan:Connect(function(input)
			if input.KeyCode == Enum.KeyCode.RightControl then 
				if library.toggledui == false then
					library.toggledui = true  
					tween:Create(Main,TweenInfo.new(0.5,Enum.EasingStyle.Linear,Enum.EasingDirection.In),{Size = UDim2.new(0, 550, 0, 0)}):Play()
				else 
					library.toggledui = false
					tween:Create(Main,TweenInfo.new(0.5,Enum.EasingStyle.Linear),{Size = UDim2.new(0, 550, 0, 400)}):Play()
				end 
			end
		end)

    local Tab = {}
        function Tab:CreateTab(text)
            PageOrders = PageOrders + 1
            local name = tostring(text) or tostring(math.random(1,5000))

            local TextButton_Tab = Instance.new("TextButton")
            TextButton_Tab.Name = text.."Server"
            TextButton_Tab.Parent = Scrolling_PageTab
            TextButton_Tab.BackgroundColor3 = Color3.fromRGB(35,35,35)
            TextButton_Tab.Position = UDim2.new(0, 0, 0.162790701, 0)
            TextButton_Tab.Size = UDim2.new(0, 100, 0, 25)
            TextButton_Tab.Font = Enum.Font.GothamMedium
            TextButton_Tab.Text = tostring(text)
            TextButton_Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_Tab.TextSize = 14.000

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TextButton_Tab

            local PageMain = Instance.new("Frame")
            PageMain.Name = name.."_PageMain"
            PageMain.Parent = PageFolder
            PageMain.AnchorPoint = Vector2.new(0.5, 0.5)
            PageMain.BackgroundColor3 = Color3.fromRGB(120, 120, 170)
            PageMain.BackgroundTransparency = 1.000
            PageMain.BorderSizePixel = 0
            PageMain.Position = UDim2.new(0.5, 0, 0.550000012, 0)
            PageMain.Size = UDim2.new(0, 530, 0, 340)
            PageMain.Visible = true
            PageMain.LayoutOrder = PageOrders

            local Scrolling_PageMain = Instance.new("ScrollingFrame")
            Scrolling_PageMain.Parent = PageMain
            Scrolling_PageMain.Active = true
            Scrolling_PageMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Scrolling_PageMain.BackgroundTransparency = 1
            Scrolling_PageMain.BorderSizePixel = 0
            Scrolling_PageMain.AnchorPoint =  Vector2.new(0.5,0.5)
            Scrolling_PageMain.Position = UDim2.new(0.5, 0, 0.5125, 0)
            Scrolling_PageMain.Size = UDim2.new(0, 550, 0, 340)
            Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, 0)
            Scrolling_PageMain.BottomImage = ""
            Scrolling_PageMain.ScrollBarThickness = 4
            Scrolling_PageMain.TopImage = ""

            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Parent = Scrolling_PageMain
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

            local UIPadding = Instance.new("UIPadding")
            UIPadding.Parent = Scrolling_PageMain
            UIPadding.PaddingLeft = UDim.new(0, 10)

            local Pageleft = Instance.new("Frame")
            Pageleft.Name = "Pageleft"
            Pageleft.Parent = Scrolling_PageMain
            Pageleft.BackgroundColor3 = Color3.fromRGB(85, 0, 255)
            Pageleft.BackgroundTransparency = 1
            Pageleft.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Pageleft.BorderSizePixel = 0
            Pageleft.Position = UDim2.new(0.5, 0, 0, 0)
            Pageleft.Size = UDim2.new(0, 265, 0, 340)

            local UIListLayout_Pageleft = Instance.new("UIListLayout")
            UIListLayout_Pageleft.Parent = Pageleft
            UIListLayout_Pageleft.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Pageleft.Padding = UDim.new(0, 10)
            
            UIListLayout_Pageleft:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Pageleft.Size = UDim2.new(0, 265, 0, UIListLayout_Pageleft.AbsoluteContentSize.Y + 5)
            end)

            local UIPadding = Instance.new("UIPadding")
            UIPadding.Parent = Pageleft

            local Pageright = Instance.new("Frame")
            Pageright.Name = "Pageright"
            Pageright.Parent = Scrolling_PageMain
            Pageright.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
            Pageright.BackgroundTransparency = 1
            Pageright.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Pageright.BorderSizePixel = 0
            Pageright.Size = UDim2.new(0, 265, 0, 340)

            local UIListLayout_Pageright = Instance.new("UIListLayout")
            UIListLayout_Pageright.Parent = Pageright
            UIListLayout_Pageright.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Pageright.Padding = UDim.new(0, 10)

            UIListLayout_Pageright:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Pageright.Size = UDim2.new(0, 265, 0, UIListLayout_Pageright.AbsoluteContentSize.Y + 5)
            end)

            local UIPadding = Instance.new("UIPadding")
            UIPadding.Parent = Pageright
            UIPadding.PaddingLeft = UDim.new(0, 5)

            UIListLayout_Pageleft:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                if UIListLayout_Pageleft.AbsoluteContentSize.Y > UIListLayout_Pageright.AbsoluteContentSize.Y then
                    Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_Pageleft.AbsoluteContentSize.Y + 10)
                end
            end)
            UIListLayout_Pageright:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                if UIListLayout_Pageright.AbsoluteContentSize.Y > UIListLayout_Pageleft.AbsoluteContentSize.Y then
                    Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_Pageright.AbsoluteContentSize.Y + 10)
                end
            end)

            TextButton_Tab.MouseButton1Click:connect(function()
                if PageMain.Name == text.."_PageMain" then
                    UIPage:JumpToIndex(PageMain.LayoutOrder)
                end

                for i ,v in next , Scrolling_PageTab:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(35,35,35)}
                        ):Play()
                    end
                    TweenService:Create(
                        TextButton_Tab,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(120,120,200)}
                    ):Play()
                end
            end)

            if FocusUI == false then
                TweenService:Create(
                    TextButton_Tab,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(120,120,200)}
                ):Play()

                PageMain.Visible = true
                TextButton_Tab.Name = text .. "Server"
                FocusUI  = true
            end

    local Page = {};
        function Page:CreatePage(Type,text)
            local function GetType(value)
                if value == 1 then
                    return Pageleft
                elseif value == 2 then
                    return Pageright
                else
                    return Pageleft
                end
            end

            local Page = Instance.new("Frame")
            Page.Parent = GetType(Type)
            Page.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Page.BorderSizePixel = 0
            Page.AnchorPoint = Vector2.new(0.5,0.5)
            Page.Position = UDim2.new(0.5, 0, 0.5, 0)
            Page.Size = UDim2.new(0, 260, 0, 340)
            Page.Visible = true
            Page.ClipsDescendants = true

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = Page

            local PageFrame = Instance.new("Frame")
            PageFrame.Parent = Page
            PageFrame.BackgroundColor3 = Color3.fromRGB(120,120,200)
            PageFrame.BackgroundTransparency = 1
            PageFrame.BorderSizePixel = 0
            PageFrame.AnchorPoint = Vector2.new(0.5,0.5)
            PageFrame.Position = UDim2.new(0.5, 0, 1, 0)
            PageFrame.Size = UDim2.new(0, 245, 0, 25)

            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = PageFrame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(0, 245, 0, 25)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = tostring(text)
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000

            local Line = Instance.new("Frame")
            Line.Parent = PageFrame
            Line.BackgroundColor3 = Color3.fromRGB(120,120,200)
            Line.BorderSizePixel = 0
            Line.AnchorPoint = Vector2.new(0.5,0.5)
            Line.Position = UDim2.new(0.5, 0, 1, 0)
            Line.Size = UDim2.new(0, 245, 0, 2)

            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Parent = Page
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 7)

            local UIPaddingPage = Instance.new("UIPadding")
            UIPaddingPage.Parent = Page
            UIPaddingPage.PaddingLeft = UDim.new(0, 7)
            UIPaddingPage.PaddingTop = UDim.new(0, 7)

            UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Page.Size =  UDim2.new(0, 260, 0,UIListLayout.AbsoluteContentSize.Y + 15)
            end);

    local Items = {}
        function Items:Label(text)
            local Labelfuc = {}

            local Label_Main = Instance.new("Frame")
            Label_Main.Parent = Page
            Label_Main.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
            Label_Main.BackgroundTransparency = 1
            Label_Main.BorderSizePixel = 0
            Label_Main.AnchorPoint = Vector2.new(0.5,0.5)
            Label_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
            Label_Main.Size = UDim2.new(0, 245, 0, 30)
            Label_Main.Visible = true
            Label_Main.ClipsDescendants = true

            local Label_Text = Instance.new("TextLabel")
            Label_Text.Parent = Label_Main
            Label_Text.BackgroundColor3 = Color3.fromRGB(10,140,255)
            Label_Text.BackgroundTransparency = 1
            Label_Text.BorderSizePixel = 0
            Label_Text.AnchorPoint = Vector2.new(0.5,0.5)
            Label_Text.Position = UDim2.new(0.5, 0, 0.5, 0)
            Label_Text.Size = UDim2.new(0, 260, 0, 40)
            Label_Text.Font = Enum.Font.GothamMedium
            Label_Text.TextColor3 = Color3.fromRGB(255,255,255)
            Label_Text.Text = tostring(text)
            Label_Text.TextSize = 14.000

            function  Labelfuc:Change(text)
                Label_Text.Text = tostring(text)
            end
                return Labelfuc
            end

        function Items:Button(text,callback)
            local Button_Frame = Instance.new("TextButton")
            Button_Frame.Parent = Page
            Button_Frame.BackgroundColor3 = Color3.fromRGB(120,120,200)
            Button_Frame.BackgroundTransparency = 1
            Button_Frame.BorderSizePixel = 0
            Button_Frame.AnchorPoint = Vector2.new(0.5,0.5)
            Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
            Button_Frame.Size = UDim2.new(0, 245, 0, 25)

            local Button_Main = Instance.new("TextButton")
            Button_Main.Parent = Button_Frame
            Button_Main.BackgroundColor3 = Color3.fromRGB(120,120,200)
            Button_Main.BackgroundTransparency = 0
            Button_Main.BorderSizePixel = 0
            Button_Main.AnchorPoint = Vector2.new(0.5,0.5)
            Button_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
            Button_Main.Size = UDim2.new(0, 245, 0, 25)
            Button_Main.Font = Enum.Font.GothamMedium
            Button_Main.TextColor3 = Color3.fromRGB(255,255,255)
            Button_Main.Text = tostring(text)
            Button_Main.TextSize = 14.000

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Name = ""
            UICorner.Parent = Button_Main

            Button_Main.MouseButton1Click:Connect(function()
                TweenService:Create(
                    Button_Main,
                    TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 230, 0, 25)}
                ):Play() wait(0.1)
                TweenService:Create(
                    Button_Main,
                    TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In),
                    {Size = UDim2.new(0, 250, 0, 25)}
                ):Play()
                TweenService:Create(
                    Button_Main,
                    TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    {TextSize = 10}
                ):Play() wait(0.1)
                TweenService:Create(
                    Button_Main,
                    TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    {TextSize = 14}
                ):Play()
                callback()
            end)
            end

        function Items:Toggle(text,Stats,callback)
            local Toggle_Main = Instance.new("Frame")
            Toggle_Main.Parent = Page
            Toggle_Main.BackgroundColor3 = Color3.fromRGB(12,12,12)
            Toggle_Main.BorderSizePixel = 0
            Toggle_Main.AnchorPoint = Vector2.new(0.5,0.5)
            Toggle_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
            Toggle_Main.Size = UDim2.new(0, 245, 0, 35)

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Name = ""
            UICorner.Parent = Toggle_Main

            local TextButton_Toggle = Instance.new("TextButton")
            TextButton_Toggle.Parent = Toggle_Main
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            TextButton_Toggle.BackgroundTransparency = 1.000
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.AnchorPoint = Vector2.new(0.5,0.5)
            TextButton_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_Toggle.Size = UDim2.new(0, 235, 0, 35)
            TextButton_Toggle.Font = Enum.Font.GothamMedium
            TextButton_Toggle.TextColor3 = Color3.fromRGB(100,100,100)
            TextButton_Toggle.Text = tostring(text)
            TextButton_Toggle.TextSize = 14.000
            TextButton_Toggle.TextXAlignment = Enum.TextXAlignment.Left
            
            local Toggle_Frame = Instance.new("Frame")
            Toggle_Frame.Parent = TextButton_Toggle
            Toggle_Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
            Toggle_Frame.BackgroundTransparency = 1
            Toggle_Frame.AnchorPoint = Vector2.new(0.5,0.5)
            Toggle_Frame.Position = UDim2.new(0.95, 0, 0.5, 0)
            Toggle_Frame.Size = UDim2.new(0, 22, 0, 22)

            local Toggle1 = Instance.new("Frame")
            Toggle1.Parent = TextButton_Toggle
            Toggle1.BackgroundColor3 = Color3.fromRGB(5,5,5)
            Toggle1.AnchorPoint = Vector2.new(0.5,0.5)
            Toggle1.Position = UDim2.new(0.95, 0, 0.5, 0)
            Toggle1.Size = UDim2.new(0, 18, 0, 18)

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 10)
            UICorner.Name = ""
            UICorner.Parent = Toggle1
            -- Lock Function
            local lockerframe = Instance.new("Frame")
            lockerframe.Name = "lockerframe"
            lockerframe.Parent = Toggle_Main
            lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            lockerframe.BackgroundTransparency = 1
            lockerframe.Size = UDim2.new(0, 245, 0, 35)
            lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
            lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

            local UICorner_Toggle = Instance.new("UICorner")
            UICorner_Toggle.CornerRadius = UDim.new(0, 5)
            UICorner_Toggle.Parent = lockerframe

            local LockerImage = Instance.new("ImageLabel")
            LockerImage.Parent = lockerframe
            LockerImage.BackgroundTransparency = 1.000
            LockerImage.BorderSizePixel = 0
            LockerImage.Position = UDim2.new(0.5, 0, 0.5, 0)
            LockerImage.AnchorPoint = Vector2.new(0.5, 0.5)
            LockerImage.Size = UDim2.new(0, 0, 0, 0)
            LockerImage.Image = "http://www.roblox.com/asset/?id=7072718362"
            LockerImage.ImageColor3 = Color3.fromRGB(120,120,200)
            --
            local check = {Toggle = false ; lock = true ; togglefunction = {}; }
            TextButton_Toggle.MouseButton1Down:Connect(function()
                if check.Toggle == false  and check.lock == true  then ------- true
                    TweenService:Create(
                        TextButton_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Toggle1,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(120,120,200)}
                    ):Play()
                elseif check.lock == true then
                    TweenService:Create(
                        TextButton_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(100,100,100)}
                    ):Play()
                    TweenService:Create(
                        Toggle1,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(5,5,5)}
                    ):Play()
                end
                if check.lock == true then
                    check.Toggle = not check.Toggle
                    pcall(callback,check.Toggle)
                end
            end)
            TextButton_Toggle.MouseEnter:Connect(function()
                if check.Toggle == false and check.lock == true then
                    TweenService:Create(
                        TextButton_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Toggle1,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(120,120,200)}
                    ):Play()
                end
            end)
            TextButton_Toggle.MouseLeave:Connect(function()
                if check.Toggle == false then
                    TweenService:Create(
                        TextButton_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(100,100,100)}
                    ):Play()
                    TweenService:Create(
                        Toggle1,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(5,5,5)}
                    ):Play()
                end
            end)
            if Stats == true then
                TweenService:Create(
                    TextButton_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,255,255)}
                ):Play()
                TweenService:Create(
                    Toggle1,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(120,120,200)}
                ):Play()
                check.Toggle = not check.Toggle
                pcall(callback,check.Toggle)
            end
            -- Function Lock
            function check.togglefunction:lock()
                TweenService:Create(
                    lockerframe,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {BackgroundTransparency = 0.5}
                ):Play() wait(0.2)
                --
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {Size = UDim2.new(0, 20, 0, 20)}
                ):Play()
                -- Tween Lock
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = -50}
                ):Play() wait(0.3)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 50}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = -30}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 30}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play() wait(0.1)
                check.lock  = false
            end
            function check.togglefunction:unlock()
                TweenService:Create(
                    lockerframe,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {BackgroundTransparency = 1}
                ):Play() wait(0.2)
                -- Tween UnLock
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = -30}
                ):Play() wait(0.3)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 30}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = -50}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 50}
                ):Play() wait(0.2)
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play() wait(0.1)
                --
                TweenService:Create(
                    LockerImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {Size = UDim2.new(0, 0, 0, 0)}
                ):Play()
                check.lock  = true
            end
            -- Tween
            Toggle_Main.MouseEnter:Connect(function()
                if check.lock == false then
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -50}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 50}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -70}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 70}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -30}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 30}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                end
            end)
            Toggle_Main.MouseLeave:Connect(function()
                if check.lock == false then
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 50}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -50}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 70}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -70}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 30}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = -30}
                    ):Play() wait(0.3)
                    TweenService:Create(
                        LockerImage,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                end
                --
            end)
            return  check.togglefunction
            end

        function Items:Dropdown(text,option,default,callback)
            local defaultt = default or ""
            local Drop_Frame = Instance.new("Frame")
            Drop_Frame.Name = "DropFrame"
            Drop_Frame.Parent = Page
            Drop_Frame.BackgroundColor3 = Color3.fromRGB(12,12,12)
            Drop_Frame.BackgroundTransparency = 0
            Drop_Frame.BorderSizePixel = 0
            Drop_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
            Drop_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
            Drop_Frame.Size = UDim2.new(0, 245, 0, 35)
            Drop_Frame.ClipsDescendants = true

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Name = ""
            UICorner.Parent = Drop_Frame

            local TextLabe_DropDown = Instance.new("TextLabel")
            TextLabe_DropDown.Name = "LabelFrameDrop"
            TextLabe_DropDown.Parent = Drop_Frame
            TextLabe_DropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabe_DropDown.BackgroundTransparency = 1
            TextLabe_DropDown.Position = UDim2.new(0.05, 0, 0.025, 0)
            TextLabe_DropDown.Size = UDim2.new(0, 245, 0, 35)
            TextLabe_DropDown.Font = Enum.Font.GothamMedium
            TextLabe_DropDown.TextColor3 = Color3.fromRGB(100,100,100)
            TextLabe_DropDown.TextSize = 14
            TextLabe_DropDown.TextWrapped = true
            TextLabe_DropDown.TextXAlignment = Enum.TextXAlignment.Left
            TextLabe_DropDown.Text = tostring(text).." :"

            function getpro()
                if default then
                    if table.find(option, default) then
                        pcall(callback, default)
                        return tostring(text).." : " .. default
                    else
                        return text
                    end
                else
                    return text
                end
            end
            TextLabe_DropDown.Text = getpro()
            local Icon = Instance.new("ImageLabel")
            Icon.Name = "Icon"
            Icon.Parent = TextLabe_DropDown
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.AnchorPoint = Vector2.new(0.5,0.5)
            Icon.Position = UDim2.new(0.9, 0, 0.5, 0)
            Icon.Rotation = 0
            Icon.Size = UDim2.new(0, 12, 0, 12)
            Icon.Image = "http://www.roblox.com/asset/?id=10815258127"
            Icon.ImageColor3 = Color3.fromRGB(100,100,100)
            
            local Scrolling_Drop = Instance.new("ScrollingFrame")
            Scrolling_Drop.Name = "Scrolling_Drop"
            Scrolling_Drop.Parent = TextLabe_DropDown
            Scrolling_Drop.Active = true
            Scrolling_Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Scrolling_Drop.BackgroundTransparency = 1
            Scrolling_Drop.BorderSizePixel = 0
            Scrolling_Drop.AnchorPoint = Vector2.new(0.5,0.5)
            Scrolling_Drop.Position = UDim2.new(0.5, 0, 2.7, 0)
            Scrolling_Drop.Size = UDim2.new(0, 245, 0, 120)
            Scrolling_Drop.CanvasSize = UDim2.new(0, 0, 0, 2)
            Scrolling_Drop.ScrollBarThickness = 1
            Scrolling_Drop.ScrollBarImageTransparency = 1

            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Name = "UIListLayout"
            UIListLayout.Parent = Scrolling_Drop
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)

            local UIPaddinglist = Instance.new("UIPadding")
            UIPaddinglist.Name = "UIPaddinglist"
            UIPaddinglist.Parent = Scrolling_Drop
            UIPaddinglist.PaddingTop = UDim.new(0, 5)

            local Button_Drop = Instance.new("TextButton")
            Button_Drop.Name = "ButtonDrop"
            Button_Drop.Parent = Drop_Frame
            Button_Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Button_Drop.BackgroundTransparency = 1
            Button_Drop.ClipsDescendants = true
            Button_Drop.Size = UDim2.new(0, 245, 0, 35)
            Button_Drop.Font = Enum.Font.SourceSans
            Button_Drop.Text = ""
            Button_Drop.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button_Drop.TextSize = 14.000

            local dog = false
            local droptween = true
            local FrameSize = 150
            local cout = 0

            for i , v in pairs(option) do
                cout =cout + 1
                if cout == 1 then
                    FrameSize = 150
                    
                elseif cout == 2 then
                    FrameSize = 150
                elseif cout >= 3 then
                    FrameSize = 150
                end

                local Button_Frame = Instance.new("Frame")
                Button_Frame.Name = "ListFrame"
                Button_Frame.Parent = Scrolling_Drop
                Button_Frame.BackgroundColor3 = Color3.fromRGB(115,15,15)
                Button_Frame.BackgroundTransparency = 1
                Button_Frame.BorderSizePixel = 0
                Button_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                Button_Frame.Size = UDim2.new(0, 220, 0, 30)

                local Dropdown_Button = Instance.new("TextButton")
                Dropdown_Button.Name = "Dropdwon_Button"
                Dropdown_Button.Parent = Button_Frame
                Dropdown_Button.AnchorPoint = Vector2.new(0.5, 0.5)
                Dropdown_Button.BackgroundColor3 = Color3.fromRGB(8,8,8)
                Dropdown_Button.BackgroundTransparency = 0
                Dropdown_Button.BorderSizePixel = 0
                Dropdown_Button.Position = UDim2.new(0.5, 0, 0.5, 0)
                Dropdown_Button.Size = UDim2.new(0, 220, 0, 30)
                Dropdown_Button.Font = Enum.Font.GothamSemibold
                Dropdown_Button.TextColor3 = Color3.fromRGB(136, 136, 138)
                Dropdown_Button.TextSize = 14
                Dropdown_Button.TextXAlignment = Enum.TextXAlignment.Left
                Dropdown_Button.Text = ""

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Name = ""
                UICorner.Parent = Dropdown_Button

                local TextLabel_Button = Instance.new("TextLabel")
                TextLabel_Button.Name = "TextLabel_TapDro2p"
                TextLabel_Button.Parent = Dropdown_Button
                TextLabel_Button.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_Button.BackgroundTransparency = 1
                TextLabel_Button.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextLabel_Button.Size = UDim2.new(0, 200, 0, 30)
                TextLabel_Button.Font = Enum.Font.GothamSemibold
                TextLabel_Button.TextColor3 = Color3.fromRGB(100,100,100)
                TextLabel_Button.TextSize = 14
                TextLabel_Button.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_Button.Text = tostring(v)
                Dropdown_Button.MouseButton1Click:Connect(function()
                    TweenService:Create(
                        TextLabe_DropDown,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Drop_Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 245, 0, 35)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    TextLabe_DropDown.Text =  text.." : "..tostring(v)
                    callback(v)
                    dog = not dog
                    droptween = false
                end)
                Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20 )
            end
            Button_Drop.MouseButton1Click:Connect(function()
                if dog == false then
                    TweenService:Create(
                        Drop_Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 245, 0, FrameSize)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 90}
                    ):Play()
                    Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
                else
                    TweenService:Create(
                        Drop_Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 245, 0, 35)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
                end
                dog = not dog
            end)
            Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
            local dropfunc = {}
            -- Tween
            Drop_Frame.MouseEnter:Connect(function()
                if droptween == true then
                    TweenService:Create(
                        TextLabe_DropDown,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0.1),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                end
            end)
            Drop_Frame.MouseLeave:Connect(function()
                if droptween == true then
                    TweenService:Create(
                        TextLabe_DropDown,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0.1),
                        {TextColor3 = Color3.fromRGB(100,100,100)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(100,100,100)}
                    ):Play()
                end
            end)
            function dropfunc:Clear()
                TextLabe_DropDown.Text = tostring(text).." :"
                TweenService:Create(
                    TextLabe_DropDown,
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(100,100,100)}
                ):Play()
                TweenService:Create(
                    Icon,
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(100,100,100)}
                ):Play()
                TweenService:Create(
                    Drop_Frame,
                    TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 245, 0, 35)}
                ):Play()
                TweenService:Create(
                    Icon,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                dog = not dog
                droptween = true
                for i, v in next, Scrolling_Drop:GetChildren() do
                    if v:IsA("Frame") then
                        v:Destroy()
                    end
                end
            end
            function dropfunc:Add(t)
                local Button_Frame = Instance.new("Frame")
                Button_Frame.Name = "ListFrame"
                Button_Frame.Parent = Scrolling_Drop
                Button_Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                Button_Frame.BackgroundTransparency = 1
                Button_Frame.BorderSizePixel = 0
                Button_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
                Button_Frame.Size = UDim2.new(0, 245, 0, 30)

                local Dropdown_Button = Instance.new("TextButton")
                Dropdown_Button.Name = "Dropdwon_Button"
                Dropdown_Button.Parent = Button_Frame
                Dropdown_Button.AnchorPoint = Vector2.new(0.5, 0.5)
                Dropdown_Button.BackgroundColor3 = Color3.fromRGB(8,8,8)
                Dropdown_Button.BackgroundTransparency = 0
                Dropdown_Button.BorderSizePixel = 0
                Dropdown_Button.Position = UDim2.new(0.47, 0, 0.5, 0)
                Dropdown_Button.Size = UDim2.new(0, 245, 0, 30)
                Dropdown_Button.Font = Enum.Font.GothamSemibold
                Dropdown_Button.TextColor3 = Color3.fromRGB(136, 136, 138)
                Dropdown_Button.TextSize = 14
                Dropdown_Button.TextXAlignment = Enum.TextXAlignment.Left
                Dropdown_Button.Text = ""

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Name = ""
                UICorner.Parent = Dropdown_Button

                local TextLabel_Button = Instance.new("TextLabel")
                TextLabel_Button.Name = "TextLabel_TapDro2p"
                TextLabel_Button.Parent = Dropdown_Button
                TextLabel_Button.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_Button.BackgroundTransparency = 1
                TextLabel_Button.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextLabel_Button.Size = UDim2.new(0, 220, 0, 30)
                TextLabel_Button.Font = Enum.Font.GothamSemibold
                TextLabel_Button.TextColor3 = Color3.fromRGB(100,100,100)
                TextLabel_Button.TextSize = 14
                TextLabel_Button.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_Button.Text = tostring(t)

                Dropdown_Button.MouseButton1Click:Connect(function()
                    TweenService:Create(
                        TextLabe_DropDown,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(255,255,255)}
                    ):Play()
                    TweenService:Create(
                        Drop_Frame,
                        TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 245, 0, 35)}
                    ):Play()
                    TweenService:Create(
                        Icon,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    TextLabe_DropDown.Text =  text.." : "..tostring(t)
                    callback(t)
                    dog = not dog
                    droptween = false
                end)
                Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
            end
                return dropfunc
            end

        function Items:Slider(text,floor,min,max,de,lol,callback)
            local sliderfunc = {}
            local SliderFrame = Instance.new("Frame")
            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = Page
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.BackgroundColor3 = Color3.fromRGB(12,12,12)
            SliderFrame.BackgroundTransparency = 0
            SliderFrame.ClipsDescendants = true
            SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
            SliderFrame.Size = UDim2.new(0, 245, 0, 45)

            local SliderFrame_UICorner = Instance.new("UICorner")
            SliderFrame_UICorner.Name = "SliderFrame_UICorner"
            SliderFrame_UICorner.Parent = SliderFrame
            SliderFrame_UICorner.CornerRadius = UDim.new(0, 5)

            local LabelNameSlider = Instance.new("TextLabel")
            LabelNameSlider.Name = "LabelNameSlider"
            LabelNameSlider.Parent = SliderFrame
            LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSlider.BackgroundTransparency = 1
            LabelNameSlider.BorderSizePixel = 0
            LabelNameSlider.Position = UDim2.new(0.5, 0, 0.35, 0)
            LabelNameSlider.Size = UDim2.new(0, 225, 0, 20)
            LabelNameSlider.Font = Enum.Font.GothamMedium
            LabelNameSlider.TextColor3 = Color3.fromRGB(100,100,100)
            LabelNameSlider.Text = tostring(text)
            LabelNameSlider.TextSize = 14
            LabelNameSlider.TextWrapped = true
            LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

            local ShowValueFrame = Instance.new("Frame")
            ShowValueFrame.Name = "ShowValueFrame"
            ShowValueFrame.Parent = SliderFrame
            ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ShowValueFrame.BackgroundColor3 = Color3.fromRGB(8,8,8)
            ShowValueFrame.BorderSizePixel = 0
            ShowValueFrame.Position = UDim2.new(0.875, 0, 0.35, 0)
            ShowValueFrame.Size = UDim2.new(0, 50, 0, 18)

            local ShowValueFrameUICorner = Instance.new("UICorner")
            ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
            ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
            ShowValueFrameUICorner.Parent = ShowValueFrame

            local CustomValue = Instance.new("TextBox")
            CustomValue.Name = "CustomValue"
            CustomValue.Parent = ShowValueFrame
            CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
            CustomValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
            CustomValue.BackgroundTransparency = 1
            CustomValue.ClipsDescendants = true
            CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            CustomValue.Size = UDim2.new(0, 50, 0, 18)
            CustomValue.Font = Enum.Font.GothamMedium
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.Text = ""
            CustomValue.TextSize = 12
            CustomValue.TextColor3 = Color3.fromRGB(100,100,100)

            if floor == true then
                CustomValue.Text =  tostring(de and string.format((de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
            end

            local ValueFrame = Instance.new("Frame")
            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueFrame.BackgroundColor3 = Color3.fromRGB(8,8,8)
            ValueFrame.BorderSizePixel = 0
            ValueFrame.Position = UDim2.new(0.499824077, 0, 0.800000012, 0)
            ValueFrame.Size = UDim2.new(0, 225, 0, 5)

            local Main_UiStroke = Instance.new("UIStroke")
            Main_UiStroke.Thickness = 1
            Main_UiStroke.Name = ""
            Main_UiStroke.Parent = ValueFrame
            Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
            Main_UiStroke.Color = Color3.fromRGB(15,15,15)
            Main_UiStroke.Transparency = 0

            local ValueFrameUICorner = Instance.new("UICorner")
            ValueFrameUICorner.CornerRadius = UDim.new(0, 10)
            ValueFrameUICorner.Name = "ShowValueFrameUICorner"
            ValueFrameUICorner.Parent = ValueFrame

            local PartValue = Instance.new("Frame")
            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.Active = true
            PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
            PartValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
            PartValue.BackgroundTransparency = 1.000
            PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
            PartValue.Size = UDim2.new(0, 225, 0, 5)

            local MainValue = Instance.new("Frame")
            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = Color3.fromRGB(120,120,200)
            MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BorderSizePixel = 0

            local MainValueUICorner = Instance.new("UICorner")
            MainValueUICorner.CornerRadius = UDim.new(0, 10)
            MainValueUICorner.Parent = MainValue

            local ConneValue = Instance.new("Frame")
            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
            ConneValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
            ConneValue.Size = UDim2.new(0, 0, 0, 0)
            ConneValue.BorderSizePixel = 0

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 10)
            UICorner.Parent = ConneValue

            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.6,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )
                MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                if floor == true then
                    local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
                    CustomValue.Text = tostring(value)
                    callback(value)
                else
                    local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                    CustomValue.Text = tostring(value)
                    callback(value)
                end
            end
            local dragging = false
            ConneValue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end)
            ConneValue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)
            SliderFrame.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end)
            SliderFrame.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)
            ValueFrame.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end)
            ValueFrame.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    move(input)
                end
            end)
            CustomValue.FocusLost:Connect(function()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)
            -- Tween
            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    LabelNameSlider,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {TextColor3 = Color3.fromRGB(255,255,255)}
                ):Play()
                TweenService:Create(
                    CustomValue,
                    TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,255,255)}
                ):Play()
            end)
            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    LabelNameSlider,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                    {TextColor3 = Color3.fromRGB(100,100,100)}
                ):Play()
                TweenService:Create(
                    CustomValue,
                    TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(100,100,100)}
                ):Play()
            end)
            function sliderfunc:Update(value)
                MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                CustomValue.Text = value
                pcall(function()
                    callback(value)
                end)
            end
            return sliderfunc
        end
        
    ---------------------
        return Items
    end
        return Page
    end
        return Tab 
    end
    end
---------------------
--return Create
---------------------

local Load = Create:CreateLoading(false)
local window = Create:window()
local Tab1 = window:CreateTab("Info")
local Tab3 = window:CreateTab("Misc")
local Tab2 = window:CreateTab("Settings")
local Info = Tab1:CreatePage(1,"MeMayBeo HUb Info")
local Info1 = Tab1:CreatePage(2,"Main")

Info:Label("Wellcome To MeMayBeo Hub")

Info:Label("Owner Hub : 𝔂𝓾𝓽𝓪 𝕯𝐙𝐒𝟏𝐓𝐆#2783")
Info:Label("Dev Hub : zeroTNgaming#0001")

local Misc = Tab3:CreatePage(1,"Misc 1")
local Misc1 = Tab3:CreatePage(2,"Misc 2")

Misc:Label("Server")

Misc:Button("Rejoin",function()
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)
end)

Misc:Button("Server Hop",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
end)

Misc:Label("Ui")

Misc:Button("Open Ui Inventory",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

Misc:Button("Open Ui Devil Shop",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

Misc:AddButton("Open Ui Inventory Fruit",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)

    Misc:Label("Teams")
    
    Misc:AddButton("Join Pirates Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end)
    
    Misc:AddButton("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end)
    
        Misc:Label("Misc Player")
	
    Misc:AddButton("Unlock Portal",function()
        getgenv().UnlockPortal = true
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnlockPortal == true then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"cannot") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnlockPortal == true then
                    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)

local Setting = Tab2:CreatePage(1,"Settings 1")
local Setting1 = Tab2:CreatePage(2,"Settings 2")



Setting:Label("Fast Attack")

Setting:Toggle("Fast Attack",true,function(y)
_G.FastAttack = y
end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(v)) do
             if typeof(w) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.FastAttack then
                            pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									w.activeController.increment = 3
								else
									w.activeController.increment = 4
								end             
                                CameraShaker:Stop()
								w.activeController.hitSound = 0
                                w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                w.activeController.attacking = false
								w.activeController.timeToNextBlock = 0
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 50
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
                            end)
                        end
                    end)
                end)
            end
        end
    end
end

Setting:Toggle("Fast Attack 1",false,function(y)
_G.FastAttack1 = y
end)


local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(v)) do
             if typeof(w) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.FastAttack1 then
                            pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									w.activeController.increment = 3
								else
									w.activeController.increment = 4
								end             
                                CameraShaker:Stop()
								w.activeController.hitSound = 0
                                w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                w.activeController.attacking = false
								w.activeController.timeToNextBlock = 0
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 50
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
                            end)
                        end
                    end)
                end)
            end
        end
    end
end

Setting:Toggle("Fast Attack 2",false,function(y)
_G.FastAttack2 = y
end)


local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(v)) do
             if typeof(w) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.FastAttack2 then
                            pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									w.activeController.increment = 3
								else
									w.activeController.increment = 4
								end             
                                CameraShaker:Stop()
								w.activeController.hitSound = 0
                                w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                w.activeController.attacking = false
								w.activeController.timeToNextBlock = 0
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 50
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
                            end)
                        end
                    end)
                end)
            end
        end
    end
end


Setting:Toggle("Super Fast Attack",false,function(y)
_G.FastAttackNormalSpeed = y
end)


local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService('VirtualUser')
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
function SeraphFuckWeapon() 
	local p13 = SeraphFrame.activeController
	local wea = p13.blades[1]
	if not wea then return end
	while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
	return wea
end
function getHits(Size)
	local Hits = {}
	local Enemies = workspace.Enemies:GetChildren()
	local Characters = workspace.Characters:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	for i=1,#Characters do local v = Characters[i]
		if v ~= game.Players.LocalPlayer.Character then
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
	end
	return Hits
end
task.spawn(
	function()
	while wait(0) do
		if  _G.FastAttackNormalSpeed then
			if SeraphFrame.activeController then
				-- if v.Humanoid.Health > 0 then
					SeraphFrame.activeController.timeToNextAttack = 0
					SeraphFrame.activeController.focusStart = 0
					SeraphFrame.activeController.hitboxMagnitude = 2048
					SeraphFrame.activeController.humanoid.AutoRotate = true
					SeraphFrame.activeController.increment = 0
				-- end
			end
		end
	end
end)
local cdnormal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0
Attack = function()
	local ac = SeraphFrame.activeController
	if ac and ac.equipped then
		task.spawn(
			function()
			if tick() - cdnormal > 0 then
				ac:attack()
				cdnormal = tick()
			else
				-- Animation.AnimationId = ac.anims.basic[2]
				-- ac.humanoid:LoadAnimation(Animation):Play(1, 1)
				game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(5000), 10, "")
			end
		end)
	end
end
b = tick()
spawn(function()
	while wait() do
		if  _G.FastAttackNormalSpeed then
			if b - tick() > 0 then
				b = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
							wait(.2)
							Boost()
						end
					end
				end
			end)
		end
	end
end)
k = tick()
spawn(function()
	while wait() do
		if  _G.FastAttackNormalSpeed then
			if k - tick() > 0 then
				k = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2048 then
						wait(.2)
						Unboost()
						end
					end
				end
			end)
		end
	end
end)
tjw1 = true
task.spawn(
	function()
		local a = game.Players.LocalPlayer
		local b = require(a.PlayerScripts.CombatFramework.Particle)
		local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
		if not shared.orl then
			shared.orl = c.wrapAttackAnimationAsync
		end
		if not shared.cpc then
			shared.cpc = b.play
		end
		if tjw1 then
			pcall(
				function()
					c.wrapAttackAnimationAsync = function(d, e, f, g, h)
						local i = c.getBladeHits(e, f, g)
						if i then
							b.play = function()
							end
							d:Play(1.25, 1.25, 1.25)
							h(i)
							b.play = shared.cpc
							wait(.1)
							d:Stop()
						end
					end
				end
			)
		end
	end
)
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
task.spawn(function()
	pcall(function()
		if not shared.orl then
			shared.orl = STOPRL.wrapAttackAnimationAsync
		end
			if not shared.cpc then
				shared.cpc = STOP.play 
			end
		spawn(function()
			game:GetService("RunService").Stepped:Connect(function()
				STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
					local Hits = STOPRL.getBladeHits(b,c,d)
					if Hits then
						if  _G.FastAttackNormalSpeed then
							STOP.play = function() end
							a:Play(2.1,2.1,2.1)
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						else
							func(Hits)
							STOP.play = shared.cpc
							wait(a.length * 0.5)
							a:Stop()
						end
					end
				end
			end)
		end)
	end)
	end)
	
Setting1:Toggle("Noclip",false,function(value)
_G.NoClip = true
end)

		local CharParts = {}
		game:GetService("RunService").Stepped:connect(function()
			pcall(function()
				if _G.NoClip then
					for i = 1, #CharParts do
						CharParts[i].CanCollide = false
					end
				else
					for i = 1, #CharParts do
						CharParts[i].CanCollide = true
					end
				end
			end)
		end)

		function SetupCharCollide(Char)
			CharParts = {}
			Char:WaitForChild("Head")
			for i, v in pairs(Char:GetChildren()) do
				if v:IsA("BasePart") then
					table.insert(CharParts, v)
				end
			end
		end

		if game.Players.LocalPlayer.Character then
			SetupCharCollide(game.Players.LocalPlayer.Character)
		end
		game.Players.LocalPlayer.CharacterAdded:connect(function(Ch)
			SetupCharCollide(Ch)
		end)

		spawn(function()
			pcall(function()
				local vu = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					task.wait(0.5)
					vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
