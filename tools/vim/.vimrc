filetype plugin indent on
syntax on

"" Default 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"" YAML 2 spaces
"" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"" Turn off auto-indent when pasting things
"" --------------------------------------------------------------------
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
"" --------------------------------------------------------------------
