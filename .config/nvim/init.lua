vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

--vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.api.nvim_set_keymap("n", "'", "qa", {})
vim.api.nvim_set_keymap("x", ";", ":'<,'>norm! @a<cr>", {})
vim.api.nvim_set_keymap("n", "a", ":lua vim.lsp.buf.code_action()<CR>", {})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

local handlers =  {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

require("lazy").setup {
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
        opts = {
            servers = {
                clangd = {},
                rust_analyzer = {},
                pyright = {},
            },
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
            for server, config in pairs(opts.servers) do
                config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                vim.lsp.enable(server)
                vim.lsp.config(server, config)
            end
        end
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = {
            keymap = { preset = "enter" },
        },
        opts_extend = { "sources.default" },
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
}

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})

vim.cmd.colorscheme("owokai")
