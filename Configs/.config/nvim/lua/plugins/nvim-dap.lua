return {
  "mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    { "<leader>dC", false },
    { "<leader>di", false },
    { "<leader>dO", false },
    { "<F9>",       function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<F7>",       function() require("dap").step_into() end,     desc = "Step Into" },
    { "<F8>",       function() require("dap").step_over() end,     desc = "Step Over" },
  },
}
