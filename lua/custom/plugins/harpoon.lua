return {
	"theprimeagen/harpoon",
	config = function()
		require("harpoon").setup {}
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local rmap = function(keys, func, desc)
			vim.keymap.set('n', keys, func, { desc = desc })
		end
		rmap("<leader>j", mark.add_file, "Add file to harpoon")
		rmap("<C-b>", ui.toggle_quick_menu, "Access harpoon menu")

		rmap("<C-h>", function() ui.nav_file(1) end, "Jump to file 1")
		rmap("<C-t>", function() ui.nav_file(2) end, "Jump to file 2")
		rmap("<C-n>", function() ui.nav_file(3) end, "Jump to file 3")
		rmap("<C-s>", function() ui.nav_file(4) end, "Jump to file 4")
	end,
}
