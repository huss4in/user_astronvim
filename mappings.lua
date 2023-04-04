-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<A-j>"] = { ":m .+1<cr>==", desc = "Move line up" },
    ["<A-k>"] = { ":m .-2<cr>==", desc = "Move line down" },

    ["<leader>y"] = { '"+y', desc = "Yank to clipboard" },
    ["<leader>D"] = { '"_d', desc = "Delete to void" },

    ["<leader>/"] = false,
    ["<leader>C"] = false,
    ["<leader>bc"] = false,
    ["<leader>bC"] = false,
    ["<leader>bd"] = false,

    ["<leader>c"] = { name = "Close", desc = "❌ Close" },
    ["<leader>ca"] = {
      function() require("astronvim.utils.buffer").close_all() end,
      desc = "All buffers",
    },
    ["<leader>cb"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick buffer",
    },
    ["<leader>co"] = {
      function() require("astronvim.utils.buffer").close_all(true) end,
      desc = "Other buffers",
    },
    ["<leader>cc"] = {
      function() require("astronvim.utils.buffer").close() end,
      desc = "Current Buffer",
    },

    ['<leader>f"'] = {
      ":Telescope registers<cr>",
      desc = "Find registers",
    },
  },
  i = {
    ["<A-k>"] = { "<esc>:m .-2<cr>==gi", desc = "Move line down" },
    ["<A-j>"] = { "<esc>:m .+1<cr>==gi", desc = "Move line up" },
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Yank to clipboard" },
    ["D"] = { '"_d', desc = "Delete to void" },

    [">"] = { ">gv" },
    ["<"] = { "<gv" },

    ["<S-j>"] = { "j" },
    ["<S-k>"] = { "k" },
    ["<A-j>"] = { ":m '>+1<cr><esc>gv=gv", desc = "Move line up" },
    ["<A-k>"] = { ":m '<-2<cr><esc>gv=gv", desc = "Move line down" },
  },
  t = {
  },
}
