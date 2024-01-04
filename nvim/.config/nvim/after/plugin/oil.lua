require("oil").setup({
  delete_to_trash = true,
  trash_command = "trash-put",
  keymaps = {
    ["g?"] = "actions.show_help",
    ["<CR>"] = "actions.select",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["g."] = "actions.toggle_hidden",
  },
  use_default_keymaps = false;
  view_options = {
    show_hidden = true,
  },
})
