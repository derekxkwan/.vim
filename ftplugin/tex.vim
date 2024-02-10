command! -nargs=* LatexCompile ! pdflatex % -o %:p:h
command! -nargs=* LatexBiber ! biber %:r
nmap <leader>lc :LatexCompile<CR>
nmap <leader>lb :LatexBiber<CR>
