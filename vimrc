set clipboard=unnamed
set ruler "always show row,col at bottom 
set list " to show tab and trailing 
set listchars=tab:→\ ,trail:•,nbsp:␣,extends:»,precedes:« 
"set listchars=tab:`\ ,trail:~,nbsp:&,extends:>,precedes:< 
"set number "to show line numbers 
"set omnifunc=syntaxcomplete#Complete 
set wildmenu " enhance autocompletion 
set wildignorecase 
inoremap <C-f> <C-x><C-f> 
set backspace=indent,eol,start 
" other defauts tweaking 
set hlsearch "  
set incsearch " start searching while typing 
set magic " regex as in grep -w 
set smartcase " lower case for ignorecase 
syntax on
 
" tab settings 
" ------------------------------------------------------------ 
" :retab to clear tabs, :%s/ \+$// to clear trailing 
set autoindent 
set shiftwidth=4
set tabstop=4 
set expandtab " insert spaces instead, ctrl-v tab to insert tab 
"set smarttab " shiftwidth tab to indent, tabstop spaces to align 


"vnoremap <space> zf
"nnoremap <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" TMUX integration
" -------------------------------------------------------------
" enter to send the line/selection to the target pane 
"t:varname local to current editor tab, b:buffer 
function! Send_to_Tmux_Lite(text) 
   if !exists("t:target_input") 
      call inputsave() 
      let t:target_input = input("Send line/selection to (-1 for the previous pane) ", '0') 
      call inputrestore() 
   end 
 
   "let target = t:target_input 
   call system("tmux set-buffer " . " '" . substitute(a:text, "'", "'\\\\''", 'g') . "'" ) 
   call system("tmux paste-buffer -t " . t:target_input) 
endfunction  

vnoremap <CR> "ry:call Send_to_Tmux_Lite(@r)<CR>gv<Esc>j

let mapleader = ","
vnoremap <leader>c :w !pbcopy<CR><CR>'>j
noremap <leader>v :r !pbpaste<CR><CR>
noremap <leader><leader> :call Send_to_Tmux_Lite("%paste\n")<CR>
vnoremap <leader><CR> <leader>c<leader><leader>
" vnoremap <leader><CR> :w !pbcopy<CR><CR> <bar> :!tmux send-keys -t0 '%paste'<CR>
" nmap <leader><CR> V"ry:call Send_to_Tmux_Lite(@r)<CR>j

" not working yet

" work with ipython
" vnoremap <leader><CR> "+y:call Send_to_Tmux_Lite("%paste\n")<CR>gv<Esc>j
 
iab  Ymd  <c-r>= strftime("%Y%m%d") 
" 
" auto completion for make tree 
iab  \|-- ├── 
iab   `-- └── 
 
" autocompletion for restructuredtext (rst), two more #s than others 
iab ==== ============================================================ 
iab ---- ------------------------------------------------------------ 
iab ^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ 
iab """" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
iab '''' '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' 
iab .... ............................................................ 
 
iab **** ************************************************************ 
iab //// //////////////////////////////////////////////////////////// 
iab #### ############################################################## 

" very magic search/replace
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap >s/ >smagic/ 

"colorscheme evening
