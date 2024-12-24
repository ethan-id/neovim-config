return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            filetype = "NvimTree_1",
            text = function()
                return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left",
            separator_style = "thick",
        },
    },
}
