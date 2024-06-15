function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
	map('n', shortcut, command)
end

function imap(shortcut, command)
	map('i', shortcut, command)
end

function vmap(shortcut, command)
	map('v', shortcut, command)
end

vim.g.mapleader = " "
-- vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

imap("ii", "<ESC>")

vmap("ii", "<ESC>")
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader><leader>", function()vim.cmd("so")end)
vim.keymap.set("n", "<leader>l", function()vim.cmd("Lazy home")end)
vim.keymap.set("n", "<leader>md", function()vim.cmd("MarkdownPreviewToggle")end)
vim.keymap.set("n", "<leader>vt", function()vim.cmd("VTerm")end)
vim.keymap.set("n", "<leader>ht", function()vim.cmd("Term")end)


nmap("<C-h>", "<C-w>h")
-- nmap("<C-j>", "<C-w>j")
-- nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
nmap("<leader>=", "<C-w>=")

-- nmap("<C-Up>", ":resize -2<CR>")
-- nmap("<C-Down>", ":resize +2<CR>")
-- nmap("<C-Left>", ":vertical resize -2<CR>")
-- nmap("<C-Right>", ":vertical resize +2<CR>")
nmap("<C-j>", ":tabp<CR>")
nmap("<C-k>", ":tabn<CR>")
nmap("<C-n>", ":Neotree toggle=true reveal=true position=float<CR>")

nmap("<leader>cpp", "<cmd>!g++ -Wall % && ./a.out<cr>")
nmap("<leader>cc", "<cmd>!gcc -Wall % && ./a.out<cr>")
nmap("<leader>cs", "<cmd>!gcc -Wall % -lcs50 && ./a.out<cr>")
