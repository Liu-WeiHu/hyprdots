return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      rust_analyzer = function()
        return true
      end,
    },

    servers = {
      gopls = {
        settings = {
          gopls = {
            usePlaceholders = false,
          },
        },
      },
    },
  },
}
