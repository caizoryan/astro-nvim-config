return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      auto_install = true,
      ensure_installed = {
        "lua",
        "vim",
        "go",
        "toml",
        "css",
        "tsx",
        "css",
        "html",
        "lua",
      },
      autotag = {
        enable = true,
        filetypes = {
          "html",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "svelte",
          "tsx",
          "jsx",
          "css",
          "lua",
        },
      },
      indent = { enable = true },
    })
  end,
}
