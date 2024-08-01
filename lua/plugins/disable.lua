return {
  { "ggandor/leap.nvim", enabled = false },
  { "echasnovski/mini.surround", enabled = false },
  { "folke/flash.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
}
