require("nvim-tree").setup {
  filters = {
    git_ignored = false,
    custom = {
      "^\\.git$",
    },
  },
}
