return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x", -- make sure you're using the desired branch
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 35,
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    never_show = { ".DS_Store" },
                },
            },
            -- You can add additional Neo-tree configuration here if needed.
        })

        -- Set keymaps to match your previous nvim-tree bindings,
        -- using Neo-tree's commands:
        local keymap = vim.keymap
        keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
        keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Reveal current file in explorer" })
        keymap.set("n", "<leader>ec", "<cmd>Neotree close<CR>", { desc = "Close file explorer" })
        keymap.set("n", "<leader>er", "<cmd>Neotree refresh<CR>", { desc = "Refresh file explorer" })
    end,
}
