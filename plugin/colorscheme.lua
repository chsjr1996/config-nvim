-- Dracula
-- vim.cmd[[colorscheme dracula]]

-- Material
local material_status_ok, material = pcall(require, 'material')
if not material_status_ok then
  return
end

vim.g.material_style = "deep ocean"
vim.cmd[[colorscheme material]]
material.setup {}
