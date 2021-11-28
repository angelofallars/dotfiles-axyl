" ============== "
" ===Mappings=== "
" ============== "
let mapleader = " "

" Pane navigation
noremap <C-j> <C-W><C-J>
noremap <C-k> <C-W><C-K>
noremap <C-l> <C-W><C-L>
noremap <C-h> <C-W><C-H>

" Search for <files> in the git repository
"nnoremap <leader>f :GFiles<cr> -- Currently broken
nnoremap <leader>f :call fzf#run({'source': 'dirget', 'sink': 'e', 'window': {'width': 0.65, 'height': 0.85}})<cr>
nnoremap <leader>g :call fzf#run({'source': 'dirget -a', 'sink': 'e', 'window': {'width': 0.65, 'height': 0.85}})<cr>

" Get list of buffers with FZF
nnoremap <leader>d :Buffers<cr>

" Next/previous buffer
nnoremap <C-j> :bn<cr>
nnoremap <C-k> :bp<cr>

" Close buffer
nnoremap <C-w> :bd<cr>

" Remap for ctrl+6 (swap buffer)
nnoremap <C-l> <C-^>

" Yank to end of line
nnoremap Y yg_

" Remove highlighting
map <C-c> :noh<cr>:<esc>

" Remap ctrl+a to ctrl+s because tmux already got ctrl+a
nnoremap <C-s> <C-a>
