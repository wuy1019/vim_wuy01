


set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" F9切换paste模式
set pastetoggle=<F9>
"将全文的tab全部替换成4空格
nnoremap <F2> :%s/\t/    /g<CR>
set noic

let g:pydiction_location = '/mnt/lustre/njsh/.vim/pydiction/complete-dict'
let g:pydiction_menu_height = 20

"新建文件自动添加文件头
autocmd BufNewFile *sh,*.cpp,*.[ch],*.py,*.java exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头 
func SetTitle()
    "如果文件类型为.sh文件 
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Created Time: ".strftime("%c"))
        call append(line(".")+2, "\#########################################################################")
        call append(line(".")+3, "\#!/bin/bash")
        call append(line(".")+4, "")
    elseif &filetype == 'python'
        call setline(1,"\#!/usr/bin/env python")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author:")
        call append(line(".")+2, "\# Created Time: ".strftime("%c"))
        call append(line(".")+3, "\# Copyright: GENESEEQ Technology Inc. All rights reserved.")
        call append(line(".")+4, "\# Description:")
        call append(line(".")+5, "\#########################################################################")
        call append(line(".")+6, "\import sys")
        call append(line(".")+7, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Created Time: ".strftime("%c"))
        call append(line(".")+2, " ************************************************************************/")
        call append(line(".")+3, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+4, "#include<iostream>")
        call append(line(".")+5, "using namespace std;")
        call append(line(".")+6, "")
    endif
    if &filetype == 'c'
        call append(line(".")+4, "#include<stdio.h>")
        call append(line(".")+5, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

