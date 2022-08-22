-----------------------------------------------------------
-- Telescope configuration file
----------------------------------------------------------

-- Plugin: nvim-telescope/telescope
-- url: https://github.com/nvim-telescope/telescope.nvim

local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

telescope.setup {
  defaults = {
    preview = {
      treesitter = false,
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disable netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      previewer = false,
    },
  },
}

-- load extensions
require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")

