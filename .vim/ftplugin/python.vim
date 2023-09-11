" set makeprg=flake8
set makeprg=mypy\ --strict
set ts=4
set sts=4
set sw=4
let b:ale_linters = ['flake8']
let b:ale_fixers = {'python': ['autopep8']}
let g:ale_fix_on_save = 1
