require("config")
require("config.lazy")
-- Get the current time
local current_hour = tonumber(os.date("%H"))

local function set_theme_by_time()
	if current_hour >= 6 and current_hour < 18 then
		-- Day theme (6am to 5:59pm)
		vim.cmd.colorscheme("rose-pine-dawn")
	else
		-- Night theme (6pm to 5:59am)
		vim.cmd.colorscheme("rose-pine-main")
	end
end

set_theme_by_time()
