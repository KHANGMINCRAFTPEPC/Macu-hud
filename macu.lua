-- Tạo màn hình GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MacuHUD"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo khung chính
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 150) -- Kích thước 300x150 pixel
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -75) -- Giữa màn hình
MainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Màu xám đậm
MainFrame.BorderSizePixel = 0

-- Tạo tiêu đề
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 30) -- Chiều cao 30 pixel, rộng bằng khung
Title.Position = UDim2.new(0, 0, 0, 0) -- Đặt ở trên cùng
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Màu xám đậm hơn
Title.Text = "Macu HUD"
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- Màu chữ trắng
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

-- Tạo nút "Bật Maru"
local Button = Instance.new("TextButton")
Button.Name = "MaruButton"
Button.Parent = MainFrame
Button.Size = UDim2.new(0.8, 0, 0.2, 0) -- Kích thước nút: rộng 80%, cao 20%
Button.Position = UDim2.new(0.1, 0, 0.5, -15) -- Đặt ở giữa khung
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Màu đỏ
Button.Text = "Bật Maru"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SourceSans
Button.TextSize = 16

-- Xử lý sự kiện khi nhấn nút
Button.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    player:Kick("Maru như con cak chơi banana đi") -- Đẩy người chơi ra khỏi game với thông báo
end)
