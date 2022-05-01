require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "vue",
    "tsx",
    "python",
    "yaml"
  },

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
      highlight_current_scope = { enable = true },
      smart_rename = {
        enable = true,
        keymaps = {
          srart_rename = "grr",
        },
      },
      navigation = {
        enable = true,
        keymaps = {
          goto_definition = "gnd",
          list_definitions = "gnD",
          list_definitions_toc = "gO",
          goto_next_usage = "<a-*>",
          goto_previous_usage = "<a-#>",
        },
      },
    }
  },
  autotag = {
    enable = true,
  }
}
