-- mouse behaviour
vim.opt.mouse = 'a'; -- enable mouse mode

-- cursor behaviour
vim.opt.guicursor = "";
vim.opt.cursorline = true;
vim.opt.scrolloff = 5;

-- window splitting
vim.opt.splitright = true;
vim.opt.splitbelow = true;

-- visuals
vim.opt.number = true;
vim.opt.relativenumber = true;
vim.opt.signcolumn = 'number';
vim.opt.showmode = true;

vim.opt.termguicolors = true;

vim.opt.list = true;
vim.opt.listchars = 'tab:» ,trail:·,nbsp:⍽,extends:…,precedes:…';
-- vim.opt.listchars = 'eol:␤,tab:␉ ,trail:␠,nbsp:⍽,extends:…,precedes:…';

-- text wrapping
vim.opt.wrap = true;
vim.opt.textwidth = 100;
vim.opt.linebreak = true;
vim.opt.breakindent = true;
vim.opt.breakindentopt = 'min:30,shift:8';

-- indentation
vim.opt.tabstop = 8;		-- width of tab characters
vim.opt.shiftwidth = 0;		-- width used for auto indentation. When 0: shiftwidth = tabstop
vim.opt.softtabstop = 0;	-- tabs of given width will be emulated using spaces and tabs

vim.opt.smarttab = true;	-- at beginning of line insert tabs according to shiftwidth
vim.opt.expandtab = false;	-- use spaces for indentation
vim.opt.autoindent = true;	-- auto indent when entering new line to remain at current leve
vim.opt.smartindent = true;	-- auto indent inside code blocks (e.g. {...})

-- file settings
vim.opt.swapfile = false;
vim.opt.backup = false;

vim.opt.updatetime = 250;

vim.opt.undodir = os.getenv('LOCALAPPDATA') .. '/nvim-data/undodir'
vim.opt.undofile = true;

-- searching
vim.opt.ignorecase = true;
vim.opt.smartcase = true; -- case sensitive when search term contains Capital letters
vim.opt.hlsearch = true;
vim.opt.incsearch = true;

-- look into spell checking for txt and html files


-- keybinds
vim.opt.timeout = true;
vim.opt.timeoutlen = 200;

vim.opt.ttimeout = false;

-- autocommands
vim.api.nvim_create_autocmd('TextYankPost', {
   desc = 'Highlight when yanking (copying) text',
   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
   callback = function()
      vim.highlight.on_yank()
   end,
})
