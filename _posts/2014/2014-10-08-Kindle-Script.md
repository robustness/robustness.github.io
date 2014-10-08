---
layout: post
Title: 2014-10-06-Kindle-Script
categories:
- Other
tags:
- Other
---
Title: Kindle Script

// already put it into the dropbox Script folder

IEEE format =&gt; 4pagesl: Trial //looks good.

{% highlight bash %}
cp $1 2010-jsac.pdf

gs -o up-left-sections.pdf -sDEVICE=pdfwrite -g3100x4000 -c &quot;&lt;&lt;/PageOffset [0 -400]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o up-right-sections.pdf -sDEVICE=pdfwrite -g3100x4000 -c &quot;&lt;&lt;/PageOffset [-310 -400]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o down-left-sections.pdf -sDEVICE=pdfwrite -g3100x4300 -c &quot;&lt;&lt;/PageOffset [0 0]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o down-right-sections.pdf -sDEVICE=pdfwrite -g3100x4300 -c &quot;&lt;&lt;/PageOffset [-310 0]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

pdftk A=up-left-sections.pdf B=down-left-sections.pdf C=up-right-sections.pdf D=down-right-sections.pdf shuffle output joke.pdf

rm up-left-sections.pdf down-left-sections.pdf up-right-sections.pdf down-right-sections.pdf

mv joke.pdf kindle-$1

[kindle.sh][0]

IEEE format =&gt; 4pagesl:

gs -o up-left-sections.pdf -sDEVICE=pdfwrite -g3100x4210 -c &quot;&lt;&lt;/PageOffset [0 -421]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o up-right-sections.pdf -sDEVICE=pdfwrite -g3100x4210 -c &quot;&lt;&lt;/PageOffset [-310 -421]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o down-left-sections.pdf -sDEVICE=pdfwrite -g3100x4210 -c &quot;&lt;&lt;/PageOffset [0 0]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

gs -o down-right-sections.pdf -sDEVICE=pdfwrite -g3100x4210 -c &quot;&lt;&lt;/PageOffset [-310 0]&gt;&gt; setpagedevice&quot; -f 2010-jsac.pdf 

pdftk A=up-left-sections.pdf B=down-left-sections.pdf C=up-right-sections.pdf D=down-right-sections.pdf shuffle output joke.pdf

Lonely Planet Solution:

gs -o left-sections.pdf -sDEVICE=pdfwrite -g3810x5950 -c &quot;&lt;&lt;/PageOffset [0 0]&gt;&gt; setpagedevice&quot; -f jordan-6-getting-started.pdf 

gs -o right-sections.pdf -sDEVICE=pdfwrite -g3810x5950 -c &quot;&lt;&lt;/PageOffset [-381 0]&gt;&gt; setpagedevice&quot; -f jordan-6-getting-started.pdf 

pdftk A=left-sections.pdf B=right-sections.pdf shuffle output single jordan-6-getting-started.pdf 

%not correct; pdfinfo ==&gt; Page size: 558.425 x 725.669 pts

gs -o left-sections.pdf -sDEVICE=pdfwrite -g2792x3628 -c &quot;&lt;&lt;/PageOffset [0 0]&gt;&gt; setpagedevice&quot; -f jordan-6-getting-started.pdf 

gs -o right-sections.pdf -sDEVICE=pdfwrite -g2792x3628 -c &quot;&lt;&lt;/PageOffset [-363 0]&gt;&gt; setpagedevice&quot; -f jordan-6-getting-started.pdf 

pdftk A=left-sections.pdf B=right-sections.pdf shuffle output single-pages-output.pdf

****

****

k2pdfopt for single column: -n -wrap- -col 1 -vb -2 -t -ls .

-col 2 -j 0+ -ls -ui -fc- -n -h 711 -w 521 -om 0 -cmax 1 -s- -rt 0 -mb 0.7 %1
{% endhighlight %}

### Reading PDF in landscape mode on Kindle Touch

Current version of firmware for Kindle Touch lacks support of landscape mode. WTF! There is [jailbreak][1] already, but no any lanscape hack. What will be very usefull for reading pdf. So, if there is no way to make it directly on Kindle, we will make it for Kindle)  
I'm use [k2pdfopt][2] like this:  
k2pdfopt.exe -col 1 -j 0+ -ls -ui -fc- -odpi 130 -h 711 -w 521 -om 0 -cmax 1 -s- -rt 0 -mb 0.7 %1  
Let's look at them in detail:  
* **-col 1** - means that there is no need to find any columns in text. If you have tables, this will helps to not break them to columns at new pages
* **-j 0+** - tries to justification text left
* **-ls** - rotate page to landscape
* **-ui**- run UI for making additional tuning before converting
* **-fc** - don't fit columns to width
* **-odpi 130** - slightly zooming of input file
* **-h 711-w 521** - width and height of screen zone for displaying pdf. There is[table][3]for other readers.
* **-om 0** -disable output margin, Kindle Touch already has margin about 10px near pdf displaying zone
* **-cmax 1 -s-** - disable increasing of contrast and sharpening. This makes fonts looks more like ClearType, with soft edges.
* **-rt 0** - disable auto determination of source orientation
* **-mb 0.7** - cut bottom margin of source in inches. This is for cutting original footer with page number etc on every source page.
* **%1** - name of source pdf



[0]: resources/7fd72e1973b7e573b43a2e88252480d6/kindle.sh
[1]: http://www.mobileread.com/forums/showthread.php?t=160454
[2]: http://www.willus.com/k2pdfopt/
[3]: https://docs.google.com/spreadsheet/ccc?key=0Amk6MWy_gPlzdHU4NmlVVDhOZnZ2WVlJNlRHWkcyenc&amp;hl=en_US
