# QSTK using Vagrant

This will install [QSTK][1] on a [Vagrant][2]-managed virtual machine running Ubuntu Precise.

# Why?

I saw a lot of students of the [Computational Investing Part I](https://www.coursera.org/course/compinvesting1) course having problems with the installation of QSTK and its dependencies.

# Install

Follow these steps in order.

## Get Vagrant and VirtualBox

Download and install [Vagrant][2].
Then, according to [the Vagrant documentation](http://vagrantup.com/v1/docs/getting-started/index.html),  download and install [VirtualBox][4].

## Add Ubuntu Precise box

Run this command
    
    vagrant box add precise32 http://files.vagrantup.com/precise32.box

This will make an Ubuntu Precise 32-bit image available to Vagrant.
    

## Clone this repo

Clone this repo, then cd into it

	git clone https://github.com/opyate/qstk-vagrant.git
    cd qstk-vagrant

## Run vagrant

    vagrant up
    
It will install [QSTK][1] and all its dependencies on the new virtual machine.

You can then run a quick test by plotting a simple graph.


# Test run

Execute the following commands to see that everything works:

    vagrant ssh

Then on the guest machine:

    mkdir -p ~/QSTK
    cd ~/QSTK
    cp /vagrant/test.py .
    python test.py
    python -m SimpleHTTPServer

If you now navigate to [localhost port 8888][3], you'll see a directory listing with `test.py` and `adjustedclose.pdf` in it:

![Directory listing](https://raw.github.com/opyate/qstk-vagrant/master/directory-listing.png)

...and then the graph itself should look like this:

![Graph](https://raw.github.com/opyate/qstk-vagrant/master/graph.png)

# Problems?

If the test run didn't work, check the output of the installation commands above, and if there are errors (usually network timeouts), try again with

    vagrant reload

Otherwise, please use the pull requests and issues functionality on Github.

[1]: http://wiki.quantsoftware.org/index.php?title=QSToolKit_Installation_Guide "QSTK"
[2]: http://www.vagrantup.com/ "Vagrant"
[3]: http://localhost:8888/ "Local"
[4]: https://www.virtualbox.org/ "VirtualBox"
