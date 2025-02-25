require("catppuccin").setup({
    -- Force the dark flavor so color_overrides for mocha actually apply
    flavour = "mocha",
    background = { dark = "mocha" },

    transparent_background = false,
    show_end_of_buffer = false,
    -- If you want the built-in terminal colors to match, set this to true
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

    -- Override Catppuccin's mocha palette with pure black
    color_overrides = {
        mocha = {
            base   = "#000000",
            mantle = "#000000",
            crust  = "#000000",
        },
    },

    -- Force black backgrounds for specific highlight groups
    custom_highlights = function(_)
        return {
            -- Main editor
            Normal              = { bg = "#000000" },
            EndOfBuffer         = { bg = "#000000" },

            -- NvimTree (sidebar)
            NvimTreeNormal      = { bg = "#000000" },
            NvimTreeEndOfBuffer = { bg = "#000000" },

            -- Add more if needed, e.g.:
            -- NeoTreeNormal   = { bg = "#000000" },
            -- NeoTreeEndOfBuffer = { bg = "#000000" },
        }
    end,

    default_integrations = true,
    integrations = {
        -- Make sure nvimtree is integrated (so Catppuccin knows it's a sidebar)
        nvimtree = true,
        treesitter = true,
        cmp = true,
        gitsigns = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- This makes Catppuccin treat NvimTree as a "sidebar"
        sidebars = { "NvimTree" },
    },
})

-- Finally, load the colorscheme
vim.cmd("colorscheme catppuccin")
