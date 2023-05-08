-- Save
vim.keymap.set('n', '<space>w', '<cmd>write<cr>', { desc = 'Save' })

-- Quit
vim.keymap.set('n', '<space>q', '<cmd>quit<cr>', { desc = 'Quite' })

--Copy to clipboard
vim.keymap.set({ 'n', 'x' }, 'cp', '"+y')

--Paste from clipboard
vim.keymap.set({ 'n', 'x' }, 'cv', '"+p')

--Delete using x without changing the registers
vim.keymap.set({ 'n', 'x' }, 'x', '"_x')

--Buffer
vim.keymap.set('n', '<space>bn', '<cmd>bNext<cr>', { desc = 'Buffer Next' })
vim.keymap.set('n', '<space>bp', '<cmd>bprevious<cr>', { desc = 'Buffer Previous' })

--[[Plugins]]
--ChadTree
vim.keymap.set('n', '<space>v', '<cmd>CHADopen<cr>', { desc = 'Files' })

--Telescope
vim.keymap.set('n', '<space>t', '<cmd>Telescope<cr>', { desc = 'Telescope' })

--Notify
vim.keymap.set('n', '<space>n', "<cmd>lua require('telescope').extensions.notify.notify()<cr>",
	{ desc = "Notify", silent = true })
--Alpha
vim.keymap.set('n', '<space>a', '<cmd>Alpha<cr>', { desc = 'Home' })

--Code Runner
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })


