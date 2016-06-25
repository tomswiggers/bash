for i in `seq 1 43`;
do
  gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$i -dLastPage=$i -sOutputFile=201606IT00x_P$i.pdf 20160606IT0001.pdf
done
