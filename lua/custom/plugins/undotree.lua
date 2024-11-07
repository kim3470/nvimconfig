return {
	"mbbill/undotree",
	config = function()
		local rmap = function(keys, func, desc)
			vim.keymap.set('n', keys, func, { desc = desc })
		end
		rmap("<leader>u", vim.cmd.UndotreeToggle, "Activate undotree")
	end,
}
