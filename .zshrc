# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH=/usr/local/root/man:/opt/local/share/man:/usr/share/man:/usr/local/share/man:/opt/X11/share/man:/Applications/Xcode.app/Contents/Developer/usr/share/man:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man
export LD_LIBRARY_PATH=/usr/local/root/lib
export LIBPATH=/usr/local/root/lib
export PATH=/usr/local/root/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/bin/cpplint:/Library/TeX/texbin:/usr/local/bin/vim #/usr/texbin
export DYLD_LIBRARY_PATH=/usr/local/root/lib
export PYTHONPATH=/usr/local/root/lib
export SHLIB_PATH=/usr/local/root/lib
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export PATH=$PATH:~/tools/gradle-2.7/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# For Root 6.10 uncomment this line otherwise will load Root 5.34
source /Applications/root_v6.10.02/bin/thisroot.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git tmux taskwarrior svn gradle extract vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration
#

bindkey -v
bindkey fj vi-cmd-mode

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias vim='/usr/local/bin/vim' #To use HomeBrew version of vim
alias ctags='/usr/local/bin/ctags'
alias c='pwd | pbcopy'
alias v='pbpaste'
alias ytdl='youtube-dl -x --audio-format mp3'
alias   rm='rm -i'
alias mv='mv -v'
alias cp='cp -v'
alias h='cd /volumes/MacHD/Users/blt1'
alias    des='cd /volumes/"MacHD"/Users/blt1/Desktop'
alias   dow='cd /volumes/"MacHD"/Users/blt1/Downloads'
alias   doc='cd /volumes/"MacHD"/Users/blt1/Documents'
alias   tex='cd /volumes/"MacHD"/Users/blt1/Dropbox/Textbooks'
alias   lat='open -a "texstudio"'
alias    l='ls -lsh'
alias    r='cd /volumes/"MacHD"/Users/blt1/Dropbox/Research/Macros; root -l'
alias   dr='cd /volumes/MacHD/Users/blt1/Dropbox'
alias    m='cd /volumes/"MacHD"/Users/blt1/Dropbox/Research/Macros'
alias rdir='cd /volumes/l/usr/local/root'
alias  sub='open -a "sublime text"'
alias pre='open -a "preview"'
alias ski='open -a "skim"'
alias src='cd /volumes/MacHD/Users/blt1/OMS/runtimelogger/src/main/java/runtimelogger'
alias run='cd /volumes/MacHD/Users/blt1/OMS/runtimelogger/'
alias scr=' cd /volumes/"MacHD"/Users/blt1/Pictures/Screenshots'
alias lx='ssh btran@lxplus6.cern.ch'
alias pr='ssh -ND 1080 -l btran cmsusr.cern.ch'
alias vm='ssh btran@VM-S1calol2.cern.ch'
alias cr='cmsenv; source /cvmfs/cms.cern.ch/crab3/crab.sh;'
alias homevm='ssh lxplus.cern.ch -D 10500 -N -L 22001:VM-S1calol2.cern.ch:22'
alias homepr='ssh -t btran@lxplus.cern.ch -L 1080:localhost:1085 "ssh -ND 1085 btran@cmsusr"'
alias mach='ssh btran@cmsusr.cern.ch -D 10500 -N -vvv -L22001:l1ts-s1calol2.cms:22'
alias homemach='ssh -t btran@lxplus.cern.ch -L 22001:localhost:22001 ssh btran@cmsusr.cern.ch -D 10500 -N -vvv -L22001:l1ts-s1calol2.cms:22'
alias ana='cd /volumes/"MacHD"/Users/blt1/svn/trunk/Analysis'
alias trunk='cd /volumes/"MacHD"/Users/blt1/svn/trunk/'
alias chrome='open -a "google chrome"'
#alias gvim      = 'gvim --remote-tab-silent'

#FUNCTIONS

catskim(){
    cat "${1}" | enscript -p - | open -f -a Skim
}

newSession(){
echo "=====CREATING CLASS TEMPLATE====="
EXT=.tex
while true; do
	read -p "Enter class name: " Cname
	read -p "Enter session number: " Snum
	if [ -d /volumes/MacHD/Users/blt1/Dropbox/ClassNotes/$Cname/Session$Snum ]
	then
		echo "This session number already exists. Please enter a
		non-existing one."
	elif [ ! -d /volumes/MacHD/Users/blt1/Dropbox/ClassNotes/$Cname  ]	
	then
		echo "This course listing does not exist. Please enter a valid one."
	else
		cd /volumes/MacHD/Users/blt1/Dropbox/ClassNotes/$Cname
		mvim $Cname"Master"$EXT
		mkdir Session$Snum
		cd Session$Snum
		mvim $Cname"Session"$Snum$EXT
		echo "Files created successfully"
	fi
done
}
source ~/.oh-my-zsh/plugins/z/z.sh
