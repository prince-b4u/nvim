-- Save
vim.keymap.set('n', '<space>w', '<cmd>write<cr>', {desc = 'Save'})

-- Quit
vim.keymap.set('n', '<space>q', '<cmd>quit<cr>', {desc = 'Quite'})

--Copy to clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')

--Paste from clipboard
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

--Delete using x without changing the registers
vim.keymap.set({'n', 'x'}, 'x', '"_x')


