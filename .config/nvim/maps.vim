" Description: Keymaps

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

nmap <leader>vi :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>pi :PlugInstall<cr>

nmap <leader>fs :w<cr>
nmap 0 ^
nmap j gj
nmap k gk
imap jk <esc>
imap kj <esc>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" ruby
map <Leader>rt :call VtrSendCommand("for file in test/*_test.rb; do ruby -Itest $file; done")<CR>

" elixir
map <Leader>mt :call VtrSendCommand("mix test")<CR>
map <Leader>mtf :call VtrSendCommand("mix test --failed")<CR>
map <Leader>mtw :call VtrSendCommand("mix test --only wip")<CR>
map <Leader>mc :call VtrSendCommand("mix credo")<CR>

" ag
map <leader>ag :Ag<cr>
