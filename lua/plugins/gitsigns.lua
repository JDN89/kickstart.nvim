return {
  'lewis6991/gitsigns.nvim',
  enabled = true,
  config = function()
    local signs = require 'gitsigns'
    signs.setup {}
  end
}
