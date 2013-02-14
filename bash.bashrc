#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
	Color_Off='0m'

	# Regular Colors
	Black='0;30m'        # Black
	Red='0;31m'          # Red
	Green='0;32m'        # Green
	Yellow='0;33m'       # Yellow
	Blue='0;34m'         # Blue
	Purple='0;35m'       # Purple
	Cyan='0;36m'         # Cyan
	White='0;37m'        # White

	# Bold
	BBlack='1;30m'       # Black
	BRed='1;31m'         # Red
	BGreen='1;32m'       # Green
	BYellow='1;33m'      # Yellow
	BBlue='1;34m'        # Blue
	BPurple='1;35m'      # Purple
	BCyan='1;36m'        # Cyan
	BWhite='1;37m'       # White

[[ $- != *i* ]] && return

PROMPT_COMMAND='RET=$?
if [ $RET -eq 0 ]; then
RETSMILY=$(say 0)
RETCOLOR=$BGreen
else
if [ $RET -eq 130 ]; then
RETSMILY=$(say 1)
RETCOLOR=$BYellow
else
RETSMILY=$(say 2)
RETCOLOR=$BRed
fi
fi'
if [ "$(whoami)" = "root" ]
then
PS1='╔═══❰❰\e[$BRed \u@\h \e[$Color_Off\n╟❰\e[$RETCOLOR $RETSMILY \e[$Color_Off❱\n╚═══❰\e[$BCyan \w \e[$Color_Off❱═══● '
PS2='╘○    '
PS1="\[\e]0;\u@\h: \w\a\]$PS1"
else
PS1='╔═══❰❰\e[$BYellow \u@\h \e[$Color_Off\n╟❰\e[$RETCOLOR $RETSMILY \e[$Color_Off❱\n╚═══❰\e[$BCyan \w \e[$Color_Off❱═══● '
PS2='╘○    '
PS1="\[\e]0;\u@\h: \w\a\]$PS1"
fi
    

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
