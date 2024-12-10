-- set leader key to space
vim.g.mapleader = " "

local k = vim.keymap -- for conciseness

---------------------
-- General ks -------------------

-- clear search highlights
k.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- k.set("n", "x", '"_x')

-- increment/decrement numbers
k.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
k.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
k.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
k.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
k.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
k.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

k.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
k.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
k.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
k.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
k.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
