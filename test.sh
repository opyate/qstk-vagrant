#!/usr/bin/env sh

su vagrant -l -c 'mkdir -p ~/QSTK && cd ~/QSTK && cp /vagrant/test.py . && python test.py'
#nohub python -m SimpleHTTPServer &
