-- translate
return {
  {
    "potamides/pantran.nvim",
    config = function()
      local pantran = require("pantran")
      pantran.setup({
        default_engine = "yandex",
        engines = {
          google = {
            fallback = {
              default_source = "en",
              default_target = "zh",
            },
          },
          yandex = {
            fallback = {
              default_source = "en",
              default_target = "zh",
            },
          },
          deepl = {
            fallback = {
              default_source = "EN-US",
              default_target = "zh",
            },
          },
        },
        ui = {
          width_percentage = 0.8,
          height_percentage = 0.5,
        },
      })
      --
      local opts = { noremap = true, silent = true, expr = true }
      vim.keymap.set("n", "<Leader>tr", pantran.motion_translate, opts)
      vim.keymap.set("n", "<leader>trr", function()
        return pantran.motion_translate() .. "_"
      end, opts)
      vim.keymap.set("x", "<leader>tr", pantran.motion_translate, opts)
    end,
  },
}
