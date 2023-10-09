return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },

        status.component.mode {
          mode_text = { icon = { kind = "VimIcon", padding = { right = 1, left = 1 } } },
          padding = { right = 1 },
          surround = {
            color = function() return { main = status.hl.mode_bg(), right = "file_info_bg" } end,
          },
        },

        status.component.file_info {
          file_icon = { padding = { left = 0 } },
          filename = { fallback = "Empty" },
          padding = { right = 1 },
          surround = {
            separator = "left",
            condition = false,
            color = { main = "file_info_bg" },
          },
        },

        status.component.git_branch {
          padding = { right = 1 },
          surround = {
            separator = "none",
          },
        },

        status.component.git_diff {},

        status.component.fill {},

        status.component.lsp { lsp_client_names = false, surround = { separator = "none", color = "bg" } },

        status.component.fill {},

        status.component.cmd_info {
          padding = { right = 0, left = 0 },
        },

        status.component.diagnostics {
          padding = { left = 0 },
          surround = { separator = "right" },
        },

        status.component.lsp { lsp_progress = false, surround = { separator = "right" } },

        status.component.treesitter {
          padding = { right = 1 },
        },

        {
          status.component.builder {
            { provider = require("astronvim.utils").get_icon "FolderClosed" },
            padding = { right = 1 },
            hl = { fg = "bg" },
            surround = { separator = "right", color = "folder_icon_bg" },
          },

          status.component.file_info {
            filename = { fname = function(nr) return vim.fn.getcwd(nr) end, padding = { left = 1 } },
            file_icon = false,
            file_modified = false,
            file_read_only = false,
            surround = {
              separator = "none",
              color = "file_info_bg",
              condition = false,
            },
          },
        },

        {
          status.component.builder {
            { provider = require("astronvim.utils").get_icon "ScrollText" },
            padding = { right = 1 },
            hl = { fg = "bg" },
            surround = { separator = "right", color = { main = "nav_icon_bg", left = "file_info_bg" } },
          },
          status.component.nav {
            percentage = {},
            ruler = { padding = { left = 1 } },
            scrollbar = {},
            surround = { separator = "none", color = "file_info_bg" },
          },
        },
      }

      return opts
    end,
  },
}
