
# The goal of this project is to create a "good" docker image for ML/"AI" dev

More specifically, the current focus of this project is Stan's implementation of 
a Hamiltonian Monte Carlo based posterior sampler, which makes fully Bayesian inference
feasible to tackle real-life, ML problems. 

These are script files which are used to develop a docker image that  
provides a full stack ML dev environment, a turn key solution, to make 
it easy to use Scala and Stan for ML dev.

The original motivation, to create this docker image, was to compile Stan to JS.

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
