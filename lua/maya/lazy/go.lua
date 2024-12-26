return {
    "ray-x/go.nvim",
    "ray-x/guihua.lua",
    --"crispgm/nvim-go",
    "nsf/gocode",
    "darrikonn/vim-gofmt",
    config = function()
        require("go").setup()
        require("go.format").gofmt()
        require("go.format").goimports()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
}
