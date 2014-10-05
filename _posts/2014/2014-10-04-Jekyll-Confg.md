---
layout: post
title: Jekyll Configuration
categories:
- Technology
tags:
- Jekyll
---

### How to make it support Latex

/_layouts/default.html 中添加

<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

/_config.yml
markdown: kramdown


### Setup Jekyll Local Host:

[Install Jekyll 2 on Ubuntu 14.0](http://michaelchelen.net/81fa/install-jekyll-2-ubuntu-14-04/)

  sudo apt-get install ruby ruby-dev make
  sudo gem install jekyll --no-rdoc --no-ri
  sudo apt-get install nodejs
  jekyll -v
  sudo apt-get install git
  sudo gem install rdiscount --no-rdoc --no-ri
  gem install kramdown
  cd ~
  sudo rm -r robustness.github.io
  git clone https://github.com/robustness/robustness.github.io
  cd ~/robustness.github.io
  jekyll serve -w

Then visit http://localhost:4000 in a web browser.




