return {
  commands = {
    Format = {
      function() 
        require("stylua-nvim").format_file()
      end,
    },
  },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand "$VIMRUNTIME/lua"] = true,
					[vim.fn.stdpath "config" .. "/lua"] = true,
				},
			},
		},
	},
}
