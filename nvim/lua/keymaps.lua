local map = vim.keymap.set
vim.g.mapleader = " "

-- Move lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down", remap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up", remap = true })

-- Navigation stuff
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down", remap = true })
map("n", "J", "mzJ`z", { desc = "Something", remap = true })
map("n", "<C-d>", "<C-d>zz", { desc = "Position the screen", remap = true })
map("n", "<C-u>", "<C-u>zz", { desc = "Postion the screen while going up", remap = true })
map("n", "n", "nzzzv", { desc = "Position the screen while jumping", remap = true })
map("n", "N", "Nzzzv", { desc = "Position the screen while jumping backwards", remap = true })

-- Easy navigation with tmux using wincmd and hjkl
map("n", "<C-h>", "<C-w>h", { desc = "Navigate left", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate down", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Navigate up", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Navigate right", remap = true })

-- greatest remap ever
map("x", "<leader>p", [["_dP]], { desc = "copy stuff", remap = true })

-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "copy stuff", remap = true })
map("n", "<leader>Y", [["+Y]], { desc = "copy stuff", remap = true })

map({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete stuff", remap = true })

map("n", "Q", "<nop>", { desc = "disabling", remap = true })

map("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "formatting", remap = true })
map("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "formatting", remap = true })
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "formatting", remap = true })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "formatting", remap = true })

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "formatting", remap = true })

-- Save current file
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file", remap = true })

-- ESC pressing jk or lk
map("i", "jk", "<ESC>", { desc = "jk to esc", noremap = true })

-- Quit Neovim
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit Buffer/Neovim", remap = true })

-- Indenting
map("v", "<", "<gv", { desc = "Indenting", silent = true, noremap = true })
map("v", ">", ">gv", { desc = "Indenting", silent = true, noremap = true })

-- New tab
map("n", "te", ":tabedit")

-- Split window
map("n", "<leader>sh", ":split<Return><C-w>w", { desc = "Split horizontal", noremap = true })
map("n", "<leader>sv", ":vsplit<Return><C-w>w", { desc = "Split vertical", noremap = true })

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>", { desc = "Navigate up" })
map("n", "<c-j>", ":wincmd j<CR>", { desc = "Navigate down" })
map("n", "<c-h>", ":wincmd h<CR>", { desc = "Navigate left" })
map("n", "<c-l>", ":wincmd l<CR>", { desc = "Navigate right" })

-- Resize window
map("n", "<C-Up>", ":resize -3<CR>")
map("n", "<C-Down>", ":resize +3<CR>")
map("n", "<C-Left>", ":vertical resize -3<CR>")
map("n", "<C-Right>", ":vertical resize +3<CR>")

-- Bufferline
map("n", "<S-l>", ":bnext<cr>", { desc = "Move to next tab", noremap = true })
map("n", "<S-h>", ":bprevious<cr>", { desc = "Move to previous tab", noremap = true })
