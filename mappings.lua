-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<F9>"] = { 
      ":w <bar> :vsplit <bar> !g++ -std=c++17 -Wall -Wextra -Wpedantic % -o %:r <cr> :terminal %:r <cr>", 
      desc = "Compile and Run cpp file" 
    },
    ["<F8>"] = { 
      ":w <bar> !g++ -std=c++17 -Wall -Wextra -Wpedantic % -o %:r <cr>",
      desc = "Compile cpp file only"
    },
    ["<F10>"] = {
      ":w <bar> :vsplit <bar> :terminal %:r <cr>",
      desc = "Run cpp file only"
    },

    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
