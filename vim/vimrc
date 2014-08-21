set modeline

set nowrap
set number
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set fileencodings="utf-8,cp1251,koi8-r,latin1"
set showcmd
set ruler
set scrolljump=7
set scrolloff=7
set hidden
set nocompatible
set bs=2
set expandtab
set showtabline=2

set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

syn on

nmap <F2> :bp<Return>
imap <F2> <Esc>:bp<Return>
nmap <F3> :bn<Return>
imap <F3> <Esc>:bn<Return>
nmap <F4> :bd<Return>
imap <F4> <Esc>:bd<Return>
nmap <Space> <PageDown>

"set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

 function MyTabLine()
     let tabline = ''
 
         for i in range(tabpagenr('$'))
             if i + 1 == tabpagenr()
                 let tabline .= '%#TabLineSel#'
             else
                 let tabline .= '%#TabLine#'
             endif
 
             let tabline .= '%' . (i + 1) . 'T'
 
             let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
         endfor
 
     let tabline .= '%#TabLineFill#%T'
 
     if tabpagenr('$') > 1
         let tabline .= '%=%#TabLine#%999XX'
     endif
 
     return tabline
 endfunction
 
 function MyTabLabel(n)
     let label = ''
     let buflist = tabpagebuflist(a:n)
 
         let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')
 
         if label == ''
             let label = '[No Name]'
         endif
 
         let label .= ' (' . a:n . ')'
 
         for i in range(len(buflist))
             if getbufvar(buflist[i], "&modified")
                 let label = '[+] ' . label
                 break
             endif
         endfor
 
     return label
 endfunction
 
set tabline=%!MyTabLine()
set guitablabel=%N:%M%t
