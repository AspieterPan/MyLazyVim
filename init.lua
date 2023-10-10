-- -- bootstrap lazy.nvim, LazyVim and your plugins
-- if vim.g.vscode then
--   -- VSCode extension
--   vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
--   vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- else
--   -- ordinary Neovim
--   require("config.lazy")
-- end

require("config.lazy")
