local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true, buffer = true }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.keymap.set("t", "<c-l>", [[<c-\><c-n><c-w>l]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
require("telescope").load_extension "termfinder"

local Terminal = require("toggleterm.terminal").Terminal
local gitui = Terminal:new({ cmd = "gitui", hidden = true })
function _GITUI_TOGGLE()
	gitui:toggle()
end

local lazygit = Terminal:new({ cmd = "lazygit" })

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end

local btm = Terminal:new({ cmd = "btm", hidden = true })

function _BTM_TOGGLE()
	btm:toggle()
end
