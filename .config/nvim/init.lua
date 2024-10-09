vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true

vim.opt.list = true
-- vim.opt.number = true

vim.api.nvim_set_keymap("n", "'", "qa", {})
vim.api.nvim_set_keymap("x", ";", ":'<,'>norm! @a<cr>", {})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  "stevearc/aerial.nvim",
  "nvim-treesitter/nvim-treesitter",
  "RRethy/base16-nvim",
  {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    }
  }
}

require("nvim-treesitter.configs").setup {}
require("aerial").setup {}
require("ibl").setup {}

vim.cmd.colorscheme("base16-default-dark")
vim.cmd.highlight("Normal guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE")
vim.cmd.highlight("LineNr guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE")
