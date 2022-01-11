" ALE configuración muestra el número de errores y warnings en la barra de
" estado.
"function! LinterStatus() abort
"  let l:counts = ale#statusline#Count(bufnr(''))
"
"  let l:all_errors = l:counts.error + l:counts.style_error
"  let l:all_non_errors = l:counts.total - l:all_errors
"
"  return l:counts.total == 0 ? '✨ all good ✨' : printf('😞 %dW %dE', all_non_errors, all_errors)
"
"endfunction
"
"set statusline=
"set statusline+=%m
"set statusline+=%f
"set statusline+=%=
"set statusline+=%{LinterStatus()}
""Parece que no Funciona bien esta función la revisaremos en un futuro
""""""""""""""""""""""""""""""""""""""""""" 

nmap <silent> <C-e> <Plug>(ale_next_wrap)

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_warnings = l:counts.total - l:all_errors

    let l:errors_recap = l:all_errors == 0 ? '' : printf('%d⨉ ', all_errors)
    let l:warnings_recap = l:all_warnings == 0 ? '' : printf('%d⚠ ', all_warnings)
    return (errors_recap . warnings_recap)
endfunction

set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
