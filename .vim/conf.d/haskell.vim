"{{{ vim2hs
Bundle "dag/vim2hs"
let g:haskell_conceal_wide = 1
" disable all conceals, including the simple ones like
" lambda and composition
let g:haskell_conceal = 0

" disable concealing of "enumerations": commatized lists like
" deriving clauses and LANGUAGE pragmas,
" otherwise collapsed into a single ellipsis
let g:haskell_conceal_enumerations = 0

let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
let g:haskell_hsp           = 0
let g:haskell_multiline_strings = 1
"}}}

" ghcmod-vim
Bundle "eagletmt/ghcmod-vim"
