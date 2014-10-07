cp $1 2010-jsac.pdf
gs     -o up-left-sections.pdf     -sDEVICE=pdfwrite     -g3100x4000     -c "<</PageOffset [0 -400]>> setpagedevice"     -f 2010-jsac.pdf  
gs     -o up-right-sections.pdf     -sDEVICE=pdfwrite     -g3100x4000     -c "<</PageOffset [-310 -400]>> setpagedevice"     -f 2010-jsac.pdf  

gs     -o down-left-sections.pdf     -sDEVICE=pdfwrite     -g3100x4300     -c "<</PageOffset [0 0]>> setpagedevice"     -f 2010-jsac.pdf 
gs     -o down-right-sections.pdf     -sDEVICE=pdfwrite     -g3100x4300     -c "<</PageOffset [-310 0]>> setpagedevice"     -f 2010-jsac.pdf 
pdftk A=up-left-sections.pdf B=down-left-sections.pdf C=up-right-sections.pdf D=down-right-sections.pdf shuffle output joke.pdf
rm up-left-sections.pdf down-left-sections.pdf up-right-sections.pdf down-right-sections.pdf
mv joke.pdf kindle-$1

