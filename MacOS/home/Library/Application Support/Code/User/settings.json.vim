{
    "vim.easymotion": true,
    "vim.incsearch": true,
    "vim.useSystemClipboard": true,
    "vim.useCtrlKeys": true,
    "vim.hlsearch": true,
    "vim.insertModeKeyBindings": [
      {
        "before": ["j", "j"],
        "after": ["<Esc>"]
      }
    ],
    "vim.normalModeKeyBindingsNonRecursive": [
      {
        "before": ["<leader>", "d"],
        "after": ["d", "d"]
      },
      {
        "before": ["<C-n>"],
        "commands": [":nohl"]
      },
      {
        "before": ["K"],
        "commands": ["lineBreakInsert"],
        "silent": true
      }
    ],
    "vim.leader": "<space>",
    "vim.handleKeys": {
      "<C-a>": false,
      "<C-f>": false,
      "<C-d>": false,
      "<C-s>": false,
      "<C-c>": false,
      "<C-v>": false,
      "<C-x>": false
    },
    "workbench.colorTheme": "Default Light+"
}
