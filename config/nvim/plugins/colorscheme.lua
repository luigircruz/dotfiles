return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
    require("rose-pine").setup({
      variant = "dawn",
      dim_inactive_winows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true
      }
    })
		vim.cmd("colorscheme rose-pine")
	end
}
