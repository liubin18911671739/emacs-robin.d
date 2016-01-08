# emacs-robin.d
my emacs.d configuration inspired by great emacsers

## inspired emacsers

[cedet](http://tuhdo.github.io/c-ide.html)

for C/C++ development

*https://github.com/emacsmirror/cedet*

[Steve Purcell](http://www.sanityinc.com/)

*https://github.com/purcell/emacs.d*

for web development

[elpy](http://elpy.readthedocs.org/en/latest/introduction.html)

for python development

*https://github.com/jorgenschaefer/elpy*

[ESS](http://ess.r-project.org/index.php?Section=home)

for R programming

*https://github.com/r0b1n1983liu/ESS*

## installation

backup your .emacs.d and .emacs, and remove them. 

`git clone https://github.com/r0b1n1983liu/emacs-robin.d.git`

on mac need install anaconda pyflakes markdown git brew macport gcc make xcode mactex sbcl jdk8 

on linux need install anaconda build-essential markdown pyflakes xpdf ghostscript latex sbcl jdk8 w3

`cp -rf emacs-robin.d/emacs-new.d ~/.emacs.d`

restart your emacs, finish the installation, tested on emacs24.4 higher, mac osx 10.11, opensuse 42 (need remove mac features)

install R using ESS need install lintr

`>install.packages("lintr")`

## after that

add tmux.conf and zshrc

which the configuration of tmux and oh-my-zsh

on mac use iterm2 and zsh

oh-my-zsh:

https://github.com/r0b1n1983liu/oh-my-zsh.git
