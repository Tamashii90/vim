require("nvim-tree").setup({
  git = {
    ignore = false
  },
  view = {
    relativenumber = true,
  },
  renderer = {
    indent_markers = {
      enable = true
    },
    highlight_git = true,
    icons = {
      git_placement = "after",
      padding = "  ",
      glyphs = {
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "",
        }
      }
    }
  }
})
