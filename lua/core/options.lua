-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)
local cmd = vim.cmd   -- Execute VIM commands

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.swapfile = false                  -- Don't use swapfile
--opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true                                            -- Show line number
opt.relativenumber = true                                    -- Show relative line numbers
opt.showmatch = true                                         -- Highlight matching parenthesis
opt.foldmethod = 'marker'                                    -- Enable folding (default 'foldmarker')
opt.splitright = true                                        -- Vertical split to the right
opt.splitbelow = true                                        -- Horizontal split to the bottom
opt.ignorecase = true                                        -- Ignore case letters when search
opt.smartcase = true                                         -- Ignore lowercase for the whole pattern
opt.linebreak = true                                         -- Wrap on word boundary
opt.termguicolors = true                                     -- Enable 24-bit RGB colors
opt.laststatus = 0                                           -- Disable statusline
opt.signcolumn = "yes"                                       -- Always set the far left bar/column
opt.hlsearch = false                                         -- Don't highlight search
opt.incsearch = true                                         -- Jump incrementally to search results
opt.guifont = "JetBrains Mono:h12"                           -- Set font to GUI apps (eg: Neovide)
g.netrw_banner = 0                                           -- Disable netrw banner
g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'         -- Add number lines on netrw
-- cmd[[au ColorScheme * hi Normal ctermbg=none guibg=none]] -- Disable theme background color

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
opt.autoindent = true       -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 700        -- ms to wait for trigger an event

