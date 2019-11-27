
# The goal of this project is to create a "good" docker image for ML/"AI" dev, more specifically, for Stan's implementation of Hamiltonian Monte Carlo methods, a fully Bayesian approach for ML  

These script files to develop a docker image which can be used for
Stan and related programming (it is supposed to be something that 
works out of the box for ML and particalarly for Scala and Stan).

Part of the goal is to compile Stan to JS.

----

Password to root and to joco users: `lionisalion`

The "foundation" (core tech stack) :

 - `tmux` 
 - `mc` 
 - `git`
 - `node.js` 
 - `python`
 - `em++` 
 - `clang` 
 - `vi`
 - `vncserver`
 - `ssh`

This list should grow, core tools are added to the image as needed.

Quickstart:

- Install docker and git.
- Start docker.

Execute the following commands at shell:

```bash
$ git clone git@github.com:jhegedus42/welcome_the_lion_on_your_path.git
$ cd wellcome_the_lion_on_your_path
$ cd docker
$ docker pull jhegedus42/welcome_the_lion_on_your_path:0010
$ ./start.sh
$ tmux
$ mc
$ sudo /usr/sbin/sshd
```
(sudo password : `lionisalion`)


Then you can ssh into the VM by:
```bash
ssh -p 8022 joco@localhost
```

(password : `lionisalion`)

-----

## Using VNC:

Inside VM, type:
```bash
$ tigervncserver -SecurityTypes None -xstartup /usr/bin/xterm
```

outside VM type:
```bash
$ ssh -p 8022 -L5903:localhost:5901 joco@localhost
```

then yet again, outside VM, type (in new terminal):
```bash
$ vncviewer -SecurityTypes None :3
````
