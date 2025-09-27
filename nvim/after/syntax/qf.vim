" Custom syntax for quickfix list

" Filename before first |
syntax match qfFileName "^[^|]*"

" Line/column info between | |
syntax match qfLineNr "\v\|[^|]+\|"

" Message after |
syntax match qfMessage " .*:"

syntax match qfError   "error"   contained  containedin=qfMessage,qfLineNr
syntax match qfWarning "warning" contained  containedin=qfMessage,qfLineNr
syntax match qfNote    "note"    contained  containedin=qfMessage,qfLineNr
syntax match qfInfo    "info"    contained  containedin=qfMessage,qfLineNr

highlight! default link qfError     DiagnosticSignError
highlight! default link qfWarning   DiagnosticSignWarn
highlight! default link qfNote      DiagnosticSignHint
highlight! default link qfInfo      DiagnosticSignInfo
