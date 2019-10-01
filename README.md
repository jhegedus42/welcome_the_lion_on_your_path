
#This is a description on how I use docker to develop this repo.

These script files to develop a docker image which can be used for
Stan and related programming (it is supposed to be something that 
works out of the box for ML and particalarly for Scala and Stan).

Part of the goal is to compile Stan to JS.

----

Password to root and to joco users: `lionisalion`

About the docker image itself:

I simply used a standard Ubuntu docker image as a start 
to create my custom version of it: I installed some of 
my favorite tools, like `tmux` and `mc`, and all the 
things that were needed for this git repo to work, 
for example `node.js` and `python`, and the compilers, 
for example `em++` or `clang` and whatever environment 
variables were needed to be set.


Ok, here it comes, an example workflow.

Quickstart:

- Install docker and git.
> git clone git@github.com:jhegedus42/wellcome_the_lion_on_your_path.git
> cd docker
> docker pull jhegedus42/welcome_the_lion_on_your_path
> ./start.sh
