set guioptions-=m                     " hide file/edit/etc. menu
set guioptions-=T                     " hide stupid button bar

if has("gui_macvim")
  set anti
  set backupcopy=yes                  " keep finder labels!
  set colorcolumn=80

  " only applies to buffers containing a markdown file
  " open current doc as Markdown in Marked.app
  " http://captainbollocks.tumblr.com/post/9858989188/linking-macvim-and-marked-app
  au filetype markdown nnoremap <buffer><leader>m :silent !open -a Marked.app '%:p'<cr>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif
