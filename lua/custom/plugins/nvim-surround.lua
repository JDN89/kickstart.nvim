-- normal module
-- ysiw"   Surround the inner word with quotes (")
-- ysiW(   Surround the inner WORD with parentheses ()
-- cs"'    Change surrounding quotes from " to '
-- cs([    Change surrounding parentheses to square brackets []
-- VISUAL MODELINE
-- S"      Surround the selected text with quotes (")
-- S{      Surround the selected text with curly braces {}
return {
  'kylechui/nvim-surround',
  version = '*', -- Use for stability; omit to use `main` branch for the latest features
  event = 'VeryLazy',
  config = function()
    require('nvim-surround').setup {
      -- Configuration here, or leave empty to use defaults
    }
  end,
}
