-----------------------------------------------------------
-- Gitsigns configuration file
----------------------------------------------------------

-- Plugin: lewis6991/gitsigns.nvim
-- url: https://github.com/lewis6991/gitsigns.nvim

local status_ok, gitsigns = pcall(require, 'gitsigns')
if not status_ok then
  return
end

gitsigns.setup {}

