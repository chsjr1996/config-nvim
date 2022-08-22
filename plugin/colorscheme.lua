local current_theme = 'dracula'

if current_theme == 'dracula' then
  vim.cmd[[colorscheme dracula]]
end

if current_theme == 'material' then
  local material_status_ok, material = pcall(require, 'material')
  if not material_status_ok then
    return
  end

  vim.g.material_style = "deep ocean"
  vim.cmd[[colorscheme material]]
  material.setup {}
end
