" 自动补充括号
inoremap	(	()<ESC>i
inoremap	{	{<CR>}<ESC>O
inoremap	[	[]<ESC>i
inoremap	"	""<ESC>i
inoremap	'	''<ESC>i
inoremap	)	<c-r>=ClosePair(')')<CR>
inoremap	}	<c-r>=ClosePair('}')<CR>
inoremap	]	<c-r>=ClosePair(']')<CR>
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1,"\#########################################################################")
		call append(line("."), "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: xxx")
		call append(line(".")+2, "\# mail: xxx@xxx")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "\#!/bin/bash")
		call append(line(".")+6, "")
	else
		call setline(1, "/*************************************************************************")
		call append(line("."), " * File Name: ".expand("%"))
		call append(line(".")+1, " * Author: xxx")
		call append(line(".")+2, " * Mail: xxx@xxx")
		call append(line(".")+3, " * Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc

