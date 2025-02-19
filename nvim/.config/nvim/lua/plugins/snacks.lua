return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = false },
		dashboard = {
			enabled = true,
			preset = {
				keys = {
					{ icon = " ", key = "<leader>pf", desc = "Find File", action = ":Telescope find_files" },
					{ icon = "󰙅 ", key = "<leader>pv", desc = "Browse File Tree", action = ":Neotree" },
					{ icon = " ", key = "<leader>pg", desc = "Find Text", action = ":Telescope live_grep" },
					{ icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
					{ icon = " ", key = "M", desc = "Mason", action = ":Mason" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				header = [[
                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
				]]
			}
		},
		explorer = { enabled = false },
		indent = { enabled = false },
		input = { enabled = false },
		picker = { enabled = false },
		notifier = { enabled = false },
		quickfile = { enabled = false },
		scope = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = false },
		image = {
			formats = {
				"jpg",
				"jpeg",
				"png",
				"gif"
			}
		}
	}
}
