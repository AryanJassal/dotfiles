-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
-- vim.g.tokyonight_style = "night"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- neovide stuff
vim.o.guifont = "FiraCode Nerd Font:h8"
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.o.relativenumber = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-n>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<C-i>"] = ":NvimTreeRefresh<cr>"
lvim.keys.normal_mode["<C-\\><C-f>"] = ":set guifont=\"FiraCode Nerd Font:h12\"<cr>"
lvim.keys.normal_mode["<C-\\><C-g>"] = ":set guifont=\"FiraCode Nerd Font:h8\"<cr>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

if vim.fn.exists('g:neovide') == nil then
  lvim.transparent_window = true
else
  vim.g.neovide_transparency = 0.9
end

-- Additional Plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
}
