return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "sitiom/nvim-numbertoggle",
    event = "BufRead",
  },

  {
    "tpope/vim-surround",
    event = "BufRead",
  },

  {
    "psliwka/vim-smoothie",
    lazy = false,
  },

  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  {
    "mg979/vim-visual-multi",
    event = "BufRead",
  },
}
