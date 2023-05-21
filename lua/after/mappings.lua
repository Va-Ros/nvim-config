local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fo", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})

--vim.api.nvim_set_keymap("n", "<leader>e", "Telescope file_browser", { noremap = true })
vim.keymap.set("n", "<leader>e",
    function()
        vim.cmd.Telescope "file_browser"
    end, {})

vim.keymap.set("n", "<C-w>", function() vim.cmd "bd" end, {})

vim.keymap.set("n", "<C-s>", function() vim.cmd "w" end, {})

vim.keymap.set("n", "<leader>bf", function() vim.lsp.buf.format() end, {})
