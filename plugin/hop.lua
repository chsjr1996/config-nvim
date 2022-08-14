-----------------------------------------------------------
-- Hop configuration file
----------------------------------------------------------

-- Plugin: phaazon/hop
-- url: https://github.com/phaazon/hop.nvim

local status_ok, hop = pcall(require, 'hop')
if not status_ok then
  return
end

hop.setup {
  keys = 'etovxqpdygfblzhckisuran'
}

