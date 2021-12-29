# Ficdown Tests


## Setup

Server:

cd  ~/projekte/fd/html; python -m http.server 


Browser:

cd ~/projekte; chromium http://localhost:8000/story.html#f1.md


Livereload;

cd ~/projekte; click-reload fd/html


Außerdem:

https://www.ficdown.com/reference

 : cd ~/projekte; multitail -l 'cd fd/html; python -m http.server' -l 'click-reload.sh fd/html' -l 'chromium http://localhost:8000/story.html#f3.md'

