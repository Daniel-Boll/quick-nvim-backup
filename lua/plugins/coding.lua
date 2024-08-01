return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-j>",
        },
        filetypes = {
          ["*"] = true,
        },
      },
    },
  },
  { "tpope/vim-abolish" },

  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
  {
    "Vonr/align.nvim",
    branch = "v2",
    lazy = true,
    init = function()
      local NS = { noremap = true, silent = true }
      -- Aligns to 1 character
      vim.keymap.set("x", "aa", function()
        require("align").align_to_char({
          length = 1,
        })
      end, NS)

      -- Aligns to 2 characters with previews
      vim.keymap.set("x", "ad", function()
        require("align").align_to_char({
          preview = true,
          length = 2,
        })
      end, NS)

      -- Aligns to a string with previews
      vim.keymap.set("x", "aw", function()
        require("align").align_to_string({
          preview = true,
          regex = false,
        })
      end, NS)
    end,
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "moyiz/git-dev.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "Wansmer/sibling-swap.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
