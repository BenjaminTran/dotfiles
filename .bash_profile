export CLICOLOR=1
LSCOLORS=exfxcxdxbxegedabagacad

# Terminal color
NM="\[\033[0;39m\]"
HI="\[\033[0;37m\]"
HII="\[\033[1;34m\]"
SI="\[\033[0;31m\]"
IN="\[\033[0m\]"

export PS1="$NM[ $HI\u $HII\h $SI\w$NM \#  ] $IN"
export MANPATH=/usr/local/root/man:/opt/local/share/man:/usr/share/man:/usr/local/share/man:/opt/X11/share/man:/Applications/Xcode.app/Contents/Developer/usr/share/man:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man
export LD_LIBRARY_PATH=/usr/local/root/lib
export LIBPATH=/usr/local/root/lib
export PATH=/usr/local/root/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/bin/cpplint:/Library/TeX/texbin #/usr/texbin
export DYLD_LIBRARY_PATH=/usr/local/root/lib
export PYTHONPATH=/usr/local/root/lib
export SHLIB_PATH=/usr/local/root/lib

#For vi mode bash
#set -o vi

#HISTORY SIZE
HISTFILESIZE=1000000000
HISTSIZE=1000000

alias vim='\usr\local\bin\vim' #To use HomeBrew version of vim
alias cd='pushd > /dev/null'
alias cdd='cd ~'
alias cd-='popd'
alias d='dirs -v'
alias d-='dirs -c'
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
alias rdir='cd /volumes/"Mac OS"/usr/local/root'
alias  sub='open -a "sublime text"'
alias pre='open -a "preview"'
alias ski='open -a Skim'
alias word='open -a "microsoft word"'
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
alias excel='open -a "microsoft excel"'
#alias gvim      = 'gvim --remote-tab-silent'
alias Phys493='cd /volumes/MacHD/Users/blt1/Dropbox/ClassNotes/Phys493'

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

#fnstate(){
#state=$(defaults read -g com.apple.keyboard.fnstate)
#if [ $state = 1 ]
#then
#	defaults write -g com.apple.keyboard.fnstate -boolean false
#	fi
#if [ $state = 0 ]
#then
#	defaults write -g com.apple.keyboard.fnstate -boolean true
#fi
#}

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

