--[[--
Open Reactor Standalone... menu item - v4 2025-09-23
By Andrew Hazelden <andrew@andrewhazelden.com>

Install this Script to:
Reactor:\System\Scripts\Comp\Reactor\Open Reactor Standalone....lua

--]]--

-- Find out the current operating system platform. The platform local variable should be set to either "Windows", "Mac", or "Linux".
local platform = (FuPLATFORM_WINDOWS and 'Windows') or (FuPLATFORM_MAC and 'Mac') or (FuPLATFORM_LINUX and 'Linux')

function OpenURL(siteName, path)
		if platform == "Windows" then
				-- Running on Windows
				command = "explorer \"" .. path .. "\""
		elseif platform == "Mac" then
				-- Running on Mac
				command = "open \"" .. path .. "\" &"
		elseif platform == "Linux" then
				-- Running on Linux
				command = "xdg-open \"" .. path .. "\" &"
		else
				print("[Error] There is an invalid Fusion platform detected")
				return
		end
		os.execute(command)
		-- print("[Launch Command] ", command)
		print("[Opening URL] [" .. siteName .. "] " .. path)
end

local path = ""
if platform == "Windows" then
	-- Running on Windows
	path = [[C:\Program Files\Reactor\Reactor.exe]]
	command = "explorer \"" .. path .. "\""
elseif platform == "Mac" then
	-- Running on Mac
	path = [[/Applications/Reactor.app]]
	command = "open \"" .. path .. "\" &"
elseif platform == "Linux" then
	-- Running on Linux
	path = [[/opt/Reactor/Reactor.app]]
	command = "xdg-open \"" .. path .. "\" &"

else
	print("[Error] There is an invalid Fusion platform detected")
	return
end

-- Validate Reactor is installed
if bmd.fileexists(path) then
	print("\n\n")
	print("Opening Reactor Standalone...")
	print('[Launch Command] ', command)
	os.execute(command)
	print("\n\n")
else
	print("\n\n")
	print("The Reactor Standalone program is missing: " .. tostring(path))
	OpenURL("Reactor Standalone GitHub", [[https://github.com/Kartaverse/Reactor-Standalone/releases]])
	print("\n\n")
	
	-- Show the Console window
	app:DoAction("Console_Show", {show = true})
end
