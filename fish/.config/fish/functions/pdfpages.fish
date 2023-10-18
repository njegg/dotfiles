function pdfpages --wraps=for\ i\ in\ Angular\ 1.\ deo.pdf\nAngular\ 2.\ deo.pdf\nAngular\ 3.\ deo.pdf\nAngular\ 4.\ deo.pdf\nAngular\ 5.\ deo.pdf\nAngular\ 6.\ deo.pdf\nAngular\ 7.\ deo.pdf\nBootstrap.pdf\nHTML\ i\ CSS.pdf\nJavaScript\ i\ TypeScript.pdf\nPitanja.pdf\;\ printf\ \'\%s:\ \'\ Pitanja.pdf\;\ pdfinfo\ Pitanja.pdf\ \|\ grep\ Pages\ \|\ grep\ -Eo\ \'\[0-9\]\*\'\;\ end\ \|\ column\ -t\ -s\ \':\' --wraps='echo asd'
    for i in $(ls -1); printf "%s: " $i; pdfinfo $i | grep Pages | grep -Eo '[0-9]*'; end | column -t -s ':'
end
