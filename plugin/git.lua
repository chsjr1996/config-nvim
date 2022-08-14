-----------------------------------------------------------
-- Git configuration file
----------------------------------------------------------

-- Plugin: dinhhuy258/git.nvim
-- url: https://github.com/dinhhuy258/git.nvim

local status_ok, git = pcall(require, 'git')
if not status_ok then
  return
end

git.setup {
  keymaps = {
    -- Open file/folder in git repository
    browse = "<leader>go",
    -- Open pull request
    open_pull_request = "<leader>gpo",
    -- Create pull request
    create_pull_request = "<leader>gpc"
  }
}

