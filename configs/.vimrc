" Main 	 
set nocompatible 	" disables old VI mode
set encoding=utf-8 	" set character encoding to UTF-8
syntax on 		" enables syntax highlighting
filetype plugin indent on " detects filetype, loads builtin plugins and indentation rules
set hidden 		" switch buffers without saving
set termguicolors
set background=dark

" UI
set number
set laststatus=2
set scrolloff=5
set wildmenu
"set mouse=a " mouse integration. Not a fan, but it's here

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoindent
set shiftround

" dont auto continue comments and dont wrap hard
set formatoptions-=o " stops vim from auto insert comment leader w/ new line
set formatoptions-=r " stops vim from auto insert comment leader w/ enter
set formatoptions-=t " stops vim from auto hard wrapping
set wrap
set linebreak
set breakindent
set breakindentopt=shift:2

" search
set ignorecase 
set smartcase
set incsearch " shows matches as i type
set hlsearch  " highlights all matches

" clear highlights after search
nnoremap <silent> <leader>/ :noh<CR> 


" ========= YAML / Ansible friendliness =========
" Use 2-space indents for YAML (+ Ansible), keep it strict and readable
augroup YAMLAnsible
  autocmd!
  autocmd FileType yaml,yml,ansible,yaml.ansible,ansible.yaml,ansible.yml
        \ setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType yaml,yml,ansible,yaml.ansible,ansible.yaml,ansible.yml
        \ setlocal indentkeys-=0#             " Don’t break indent on comment #
  autocmd FileType yaml,yml,ansible,yaml.ansible,ansible.yaml,ansible.yml
        \ setlocal foldmethod=indent foldlevel=99
  autocmd FileType yaml,yml,ansible,yaml.ansible,ansible.yaml,ansible.yml
        \ setlocal concealcursor=nvic conceallevel=0 " Never hide YAML chars
augroup END

set nojoinspaces
set backspace=indent,eol,start
