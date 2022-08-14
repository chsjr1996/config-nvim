-----------------------------------------------------------
-- Comment configuration file
----------------------------------------------------------

-- Plugin: numToStr/Comment
-- url: https://github.com/numToStr/Comment.nvim

local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
  return
end

comment.setup {}

