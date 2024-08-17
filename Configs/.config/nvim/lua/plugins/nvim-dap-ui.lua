return {
    "rcarriga/nvim-dap-ui",
    opts = {

        layouts = {
            {
                -- 第一个布局，左侧窗口
                elements = {
                    { id = "scopes",      size = 0.6 },
                    { id = "breakpoints", size = 0.1 },
                    { id = "stacks",      size = 0.2 },
                    { id = "watches",     size = 0.1 },
                },
                size = 80, -- 设置左侧窗口的宽度
                position = "left",
            },
            {
                -- 第二个布局，下方窗口
                elements = {
                    { id = "repl",    size = 0.8 },
                    { id = "console", size = 0.2 },
                },
                size = 18, -- 设置下方窗口的高度
                position = "bottom",
            },
        },
    }
}
