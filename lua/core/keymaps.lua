-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Saving actions
map('n', '<leader>s', ':w<CR>')
map('n', '<C-s>', ':w<CR>')

-- Close actions
map('n', '<C-q>', ':q<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>c', ':bw<CR>')

-----------------------------------------------------------
-- General behavior
-----------------------------------------------------------

-- Do not yank with x
map('n', 'x', '"_x')

-- Select all
map('n', '<C-a>', 'gg<S-v>G')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
-- TODO: Install terminal plugin

-- File explorer
map('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')
map('n', '<leader>ef', '<cmd>NvimTreeFindFile<CR>')
map('n', '<leader>ep', '<cmd>Telescope file_browser<CR>')

-- Bufferline
map('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>')
map('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>')

-- Git
map('n', '<leader>gl', '<cmd>Gitsigns blame_line<CR>')

-- Motion
map('', '<leader><leader>s', '<cmd>HopChar1<cr>')

-- Telescope
---- Navigation
map('n', '<C-p>', '<cmd>Telescope find_files<cr>')
map('n', '<M-b>', '<cmd>Telescope buffers<cr>')
map('n', '<M-t>', '<cmd>Telescope live_grep<cr>')
map('n', '<M-f>', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
map('n', '<leader>tb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>tst', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>tsf', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

---- LSP
local function lsp_on_attach_telescope_maps()
  map('n', '<M-s>', '<cmd>Telescope lsp_document_symbols<cr>')
  map('n', '<leader>tsl', '<cmd>Telescope lsp_document_symbols<cr>')
  map('n', 'gr', '<cmd>Telescope lsp_references<cr>')
  map('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
end

---- GIT
map('n', '<leader>tgc', '<cmd>Telescope git_commits<cr>')
map('n', '<leader>tgb', '<cmd>Telescope git_branches<cr>')
map('n', '<leader>tgs', '<cmd>Telescope git_status<cr>')

return {
  lsp_on_attach_telescope_maps = lsp_on_attach_telescope_maps
}
