-- ================================================================================================
-- title : Suckless NeoVim Config
-- author: Radley E. Sidwell-lewis
-- ================================================================================================

-- theme & transparency
vim.cmd.colorscheme("quiet")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
-- Basic settings

vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = false                          -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 2                                -- Tab width
vim.opt.shiftwidth = 2                             -- Indent width
vim.opt.softtabstop = 2                           -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results
vim.opt.incsearch = true                           -- Show matches as you type


-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.colorcolumn = ""                        -- Show column at 100 characters
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options
vim.opt.showmode = false                           -- Don't show mode in command line
vim.opt.pumheight = 10                             -- Popup menu height
vim.opt.pumblend = 10                              -- Popup menu transparency
vim.opt.winblend = 0                               -- Floating window transparency
vim.opt.conceallevel = 0                           -- Don't hide markup
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit
vim.opt.winborder = "rounded"

-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save


-- Behavior settings
vim.opt.hidden = true                              -- Allow hidden buffers
vim.opt.errorbells = false                         -- No error bells
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "inclusive"                    -- Selection behavior
vim.opt.mouse = "a"                                -- Enable mouse support
-- vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor settings
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- -- Folding settings
-- vim.opt.foldmethod = "expr"                             -- Use expression for folding
-- vim.wo.vim.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
-- vim.opt.foldlevel = 99                                  -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true                          -- Horizontal splits go below
vim.opt.splitright = true                          -- Vertical splits go right


-- Key mappings
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)

-- Normal mode mappings
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "8j", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "8k", { desc = "Half page up (centered)" })


-- Delete without yanking
-- vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
-- vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
-- vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })



-- Splitting & Resizing
vim.keymap.set("n", "<C-w>v", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<C-w>s", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
-- vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
-- vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })


-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
-- vim.keymap.set("n", "<leader>f", ":find ", { desc = "Find file" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Trim whitesace
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    local curpos = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, curpos)
  end,
})

-- My mapping
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "<C-o>", "<Esc>o", { noremap = true })

vim.keymap.set("i", "<Tab>", function()
  local col = vim.fn.col(".")
  local line = vim.fn.getline(".")
  local next_char = line:sub(col, col)
  if next_char:match('[%)%]%}"\'`]') then
    return "<Right>"
  else
    return "<Tab>"
  end
end, { expr = true, noremap = true })

vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { noremap = true, desc = "Yank to system clipboard" })
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("n", "gs", "^")
vim.keymap.set("n", "ge", "G")
vim.keymap.set("n", "K", "5k")
vim.keymap.set("n", "J", "5j")

vim.keymap.set("v", "J", "5j")
vim.keymap.set("v", "K", "5k")
vim.keymap.set("v", "gl", "$")
vim.keymap.set("v", "gh", "0")
vim.keymap.set("v", "gs", "^")
vim.keymap.set("v", "ge", "G")
vim.keymap.set("v", "<leader>c", "gc", { remap = true })

vim.keymap.set("n", "<leader>c", "gcc", { remap = true })
vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>")
vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true, silent = true, desc = 'Select all content' })


-- render space
-- vim.opt.list = true
-- vim.opt.listchars = {
--   space = "⋅",  -- thinner, lighter than ·
-- }

-- pack
vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/echasnovski/mini.pick' },
  { src = 'https://github.com/blazkowolf/gruber-darker.nvim' },
  { src = 'https://github.com/nvim-mini/mini.pairs' },
}

-- require("gruber-darker").setup({
--   italic = {
--     strings = false,
--     comments = false,
--   },
-- })

vim.cmd("colorscheme gruber-darker")

vim.lsp.enable({"pylsp"})

vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        }
      }
    }
  }
})

require "mini.pick".setup()
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { noremap = true, silent = true })
require('mini.pairs').setup()
