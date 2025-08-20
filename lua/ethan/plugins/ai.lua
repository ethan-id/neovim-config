return {
    -- GitHub Copilot inline suggestions only
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        cmd = "Copilot",
        opts = {
            panel = { enabled = false },
            suggestion = {
                enabled = true,
                auto_trigger = true,
                debounce = 75,
                keymap = {
                    accept = "<Tab>",
                    accept_word = "<M-w>",
                    accept_line = "<M-l>",
                    next = "<M-]>",
                    prev = "<M-[>",
                    dismiss = "<C-]>",
                },
            },
            filetypes = {
                ["*"] = true,
            },
        },
        config = function(_, opts)
            require("copilot").setup(opts)
        end,
    },
}


