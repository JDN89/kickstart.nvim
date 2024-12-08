-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {

      {"folke/tokyonight.nvim",config = function() vim.cmd.colorscheme "tokyonight" end},
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "tokyonight" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- -- If I want to call treesitter and set different highlights,
-- -- then set it after setting the colorscheme with lazyvim.
-- -- Otherwise LazyVim overrides the colorscheme
-- -- Set custom highlights after colorscheme
-- local function set_custom_highlights()
--   -- Example: Builtin function highlight
   vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = "yellow" })
--
--   -- Example: ColorColumn
--   vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#90ee90"})
-- end
--
-- -- Apply custom highlights after the colorscheme is set
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     set_custom_highlights()
--   end,
-- })
--
-- -- Apply immediately in case colorscheme is already loaded
-- set_custom_highlights()
