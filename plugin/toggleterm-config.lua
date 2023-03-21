require("toggleterm").setup {
    -- size can be a number or function which is passed the current terminal
    size = 20,
    open_mapping = [[<c-t>]],
    direction = "float",
}
local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })
local iex      = Terminal:new({ cmd = "iex", hidden = true , direction = "tab"})

function _LAZYGIT_TOGGLE()
    lazygit:toggle()
end

function _IEX_TOGGLE()
    iex:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>lua _IEX_TOGGLE()<CR>", { noremap = true, silent = true })
