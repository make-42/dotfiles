" VIM-PLUG Configuration
call plug#begin('~/.config/nvim/plugged') " Define plugin install dir
" Define plugins to install on :PlugInstall
Plug 'joshdick/onedark.vim' " OneDark Theme
Plug 'iCyMind/NeoSolarized' " NeoSolarized Theme
Plug 'jacoborus/tender.vim' " Tender Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' } " OneHalf Theme
Plug 'morhetz/gruvbox' " Gruvbox Theme
Plug 'vim-airline/vim-airline' " Vim Airline Bar Plugin
Plug 'vim-airline/vim-airline-themes' " Vim Airline Themes Plugin
Plug 'preservim/nerdtree' " NERDTree File Manager Plugin
Plug 'airblade/vim-gitgutter' " VIM-Gitgutter Plugin
" Plug 'lambdalisue/battery.vim' battery.vim Plugin
Plug 'vim-syntastic/syntastic' " Syntastic Plugin
call plug#end()

" Enable colors
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
autocmd vimenter * ++nested colorscheme onehalfdark " tender

" Airline Plugin Settings
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = '%{battery#component()}'

" Syntastic Settings
" Syntastic is a syntax checker, install pylint and JSHint
let g:airline_section_y = '%{SyntasticStatuslineFlag()}'

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" General GUI Settings
set mouse=a
set guifont=SauceCodePro\ NF:h16 " Space\ Mono\ for\ Powerline
set number


" General Neovide Settings
" let g:neovide_transparency=0.95

" Neovide Particle Settings
let g:neovide_cursor_vfx_mode = "pixiedust"
let g:neovide_cursor_vfx_particle_density=30.0


" Autostart NERDTree
autocmd vimenter * ++nested NERDTree

" Set user home dir as current directory
cd ~/
