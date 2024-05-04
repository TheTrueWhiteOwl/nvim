vim.cmd('filetype plugin on');
-- research filetype indent!!

-- visuals
vim.opt.guicursor = "";

vim.opt.number = true;
vim.opt.relativenumber = true;

vim.opt.termguicolors = true;

-- vim.opt.list = true;
-- vim.opt.listchars = 'eol:␤,tab:␉ ,trail:␠,nbsp:⍽,extends:…,precedes:…';

-- text wrapping
vim.opt.wrap = false;
vim.opt.textwidth = 100;
vim.opt.colorcolumn = {};


-- indentation
vim.opt.tabstop = 8;		 -- width of tab characters
vim.opt.shiftwidth = 0;		 -- width used for auto indentation. When 0: shiftwidth = tabstop
vim.opt.softtabstop = 0;	 -- tabs of given width will be emulated using spaces and tabs

vim.opt.smarttab = true;	 -- at beginning of line insert tabs according to shiftwidth
vim.opt.expandtab = false;	 -- use spaces for indentation
vim.opt.autoindent = true;	 -- auto indent when entering new line to remain at current leve
vim.opt.smartindent = true;	 -- auto indent inside code blocks (e.g. {...})


-- file settings
vim.opt.swapfile = false;
vim.opt.updatetime = 1000;

vim.opt.backup = false;
vim.opt.undodir = os.getenv('LOCALAPPDATA') .. '/nvim-data/undodir'
vim.opt.undofile = true;


-- searching
vim.opt.hlsearch = false;
vim.opt.incsearch = true;


-- look into spell checking for txt and html files
