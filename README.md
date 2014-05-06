mozilla-central-vagrant
=======================

An experimental Ubuntu 12.04 x86_64 VM for running `mach build`.


Requirements
------------

* Vagrant 1.5+
* Virtualbox 4.3+
* `mozilla-central` repository at `../mozilla-central` (see below)


Usage
-----

Open and study Vagrantfile - don't worry, it's just 20 lines or so.
You can change the number of CPUs and memory allocated for the VM.
You can also change the path to `mozilla-central` repository on the host machine.
Make sure that `mozilla-central` is clean.

Next, do this:

    vagrant up
    vagrant ssh
    cd /src/mozilla
    ./mach bootstrap
    <enter> <enter> <enter>
    ./mach build

Look for objdir at `/tmp/obj-*`.
