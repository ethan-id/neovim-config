return {
    "catppuccin/nvim",
    name = "catppuccin",
    -- Load it early so other plugins can reference Catppuccin colors
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha", -- "latte", "frappe", "macchiato", or "mocha"
        background = { dark = "mocha" },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
            comments     = { "italic" },
            conditionals = { "italic" },
            loops        = {},
            functions    = {},
            keywords     = {},
            strings      = {},
            variables    = {},
            numbers      = {},
            booleans     = {},
            properties   = {},
            types        = {},
            operators    = {},
        },
        color_overrides = {
            mocha = {
                base   = "#000000",
                mantle = "#000000",
                crust  = "#000000",
            },
        },
        custom_highlights = function(_)
            return {
                -- Main editor
                Normal              = { bg = "#000000" },
                EndOfBuffer         = { bg = "#000000" },

                -- NvimTree (sidebar)
                NvimTreeNormal      = { bg = "#000000" },
                NvimTreeEndOfBuffer = { bg = "#000000" },

                -- Uncomment if you use Neo‐tree or other sidebars:
                -- NeoTreeNormal      = { bg = "#000000" },
                -- NeoTreeEndOfBuffer = { bg = "#000000" },
            }
        end,
        default_integrations = true,
        integrations = {
            -- Make sure nvimtree is recognized as a sidebar
            nvimtree   = true,
            treesitter = true,
            cmp        = true,
            gitsigns   = true,
            notify     = false,
            mini       = {
                enabled = true,
                indentscope_color = "",
            },
            -- Tells Catppuccin to treat these as sidebars
            sidebars   = { "NvimTree" },
        },
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd("colorscheme catppuccin")
    end,
}
