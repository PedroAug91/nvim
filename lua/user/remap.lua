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

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})

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
nmap("<leader>cl", ":FloatermNew <CR>")

nmap("<C-n>", ":Neotree toggle=true reveal=true position=float<CR>")
nmap("<leader>gs", ":Neotree float git_status<cr>")

nmap("<leader>cpp", ":FloatermNew --autoclose=0 g++ % -Wall -o %< && %<<CR>")
nmap("<leader>cc", ":FloatermNew --autoclose=0 gcc % -Wall -o %< && %<<CR>")
nmap("<leader>cs", ":FloatermNew --autoclose=0 gcc % -Wall -lcs50 -o %< && %<<CR>")

nmap("<leader>ma", ":Mason<cr>")
