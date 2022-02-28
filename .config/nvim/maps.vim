" Description: Keymaps

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

nmap <leader>vi :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

nmap <leader>pi :PlugInstall<cr>
nmap <leader>pc :PlugClean<cr>

nmap <leader>cp :let @+ = expand('%')<cr>

nmap <leader>cs :let @/ = ""<cr>

nmap <leader>fs :w<cr>
nmap <leader>fr :e!<cr>
nmap 0 ^
nmap j gj
nmap k gk
imap jk <esc>
imap kj <esc>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" ruby
nmap <leader>rt :call VtrSendCommand("for file in test/*_test.rb; do ruby -Itest $file; done")<CR>

" elixir
nmap <leader>mt :call VtrSendCommand("mix test")<CR>
nmap <leader>mtf :call VtrSendCommand("mix test --failed")<CR>
nmap <leader>mtw :call VtrSendCommand("mix test --only wip")<CR>
nmap <leader>mc :call VtrSendCommand("mix credo")<CR>

" vim-tmux-runner
nmap <leader>kr :VtrKillRunner<cr>
