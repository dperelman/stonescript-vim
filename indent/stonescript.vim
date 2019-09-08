" Vim indent file
" Language:     Stonescript (Stone Story RPG's builtin scripting language)
" Maintainer:   Daniel Perelman (https://github.com/dperelman)

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent     " indentexpr isn't much help otherwise

setlocal indentexpr=GetStonescriptIndent(v:lnum)

setlocal expandtab
setlocal softtabstop=2
setlocal shiftwidth=2

" Based on the indent/python.vim included with Vim 8.1.
function GetStonescriptIndent(lnum)
  " Search backwards for the previous non-empty line.
  let plnum = prevnonblank(v:lnum - 1)
  let plindent = indent(plnum)

  let pline = getline(plnum)
  " If the previous line started with a question mark, indent this line
  if pline =~ '^\s*?'
    return plindent + shiftwidth()
  endif

  return plindent
endfunction
