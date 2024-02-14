command! -nargs=* LatexCompile ! pdflatex % -o %:p:h
command! -nargs=* LatexBiber ! biber %:r
command! -nargs=* LatexBibtex ! bibtex %:r
nmap <leader>lc :LatexCompile<CR>
nmap <leader>lb :LatexBiber<CR>
nmap <leader>lt :LatexBibtex<CR>

