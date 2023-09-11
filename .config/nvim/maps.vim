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
nmap <leader>mf :VtrOpenRunner {'orientation': 'h', 'percentage': 40}<cr>:VtrSendCommandToRunner mix format<cr>
nmap <leader>mt :VtrOpenRunner {'orientation': 'h', 'percentage': 40}<cr>:VtrSendCommandToRunner mix test<cr>
nmap <leader>mtf :VtrOpenRunner {'orientation': 'h', 'percentage': 40}<cr>:VtrSendCommandToRunner mix test --failed<cr>
nmap <leader>mtw :VtrOpenRunner {'orientation': 'h', 'percentage': 40}<cr>:VtrSendCommandToRunner mix test --only wip<cr>

" vim-tmux-runner
nmap <leader>kr :VtrKillRunner<cr>
