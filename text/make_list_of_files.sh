#!/bin/bash
outfile=list_of_files.tex

cat > $outfile << EOF
% Created on $(date) automatically
\begin{itemize}
EOF
 for arg in $(ls *tex | grep -vE "formats|sw-edit|tcilatex")
 do 
	 dollar_arg=$(echo $arg | sed 's/_/\\_/g')
	 echo "\\item \\href{${arg}}{${dollar_arg}}" >> $outfile
 done
cat >> $outfile << EOF
\end{itemize}

EOF


