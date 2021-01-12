welcome_message () {
		echo " _       _ _   "
		echo "(_)_ __ (_) |_ "
		echo "| | '_ \| | __|"
		echo "| | | | | | |_ "
		echo "|_|_| |_|_|\__|"
		echo "==============="
}

setup_key () {
		echo -e "\e[43;30m SETUP KEY \e[0m"
		echo "Would you like to generate a new SSH key? (y/n)"
		read resp
		if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
				echo "Generating key..."
				mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "dm@kaif.dev"
				echo "...done!"
				echo "KEY GENERATED:"
				cat ~/.ssh/id_ed25519.pub	

				echo "Test key with Github? (y/n)"
				read resp
				if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
					ssh -T git@github.com
				fi

		else
				echo "KEY GENERATION SKIPPED"
		fi
}

detect_os () {
		echo -e "\e[43;30m DETECT OS \e[0m"
		unameOut="$(uname -s)"
		case "${unameOut}" in
				Linux*)     OS=Linux;;
				Darwin*)    OS=Mac;;
				CYGWIN*)    OS=Cygwin;;
				MINGW*)     OS=MinGw;;
				*)          OS="UNKNOWN:${unameOut}"
		esac
		echo "OS Detected:" ${OS}
}

configure_os () {
		if [ "$OS" = 'Linux' ] ; then
				echo -e "\e[43;30m CONFIGURE LINUX \e[0m"
				apt update -y
				apt upgrade -y
				apt install python -y
				apt install ansible -y
		fi

		if [ "$OS" = 'Mac' ] ; then
				echo -e "\e[43;30m CONFIGURE MACOS \e[0m"

				# Install homebrew if it is not installed
				which brew 1>&/dev/null
				if [ ! "$?" -eq 0 ] ; then
					echo "Homebrew not installed. Attempting to install Homebrew"
					/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
					if [ ! "$?" -eq 0 ] ; then
						echo "Something went wrong. Exiting..." && exit 1
					fi
				fi

				brew update
				brew upgrade
				brew install coreutils
				brew install python
				brew install ansible
		fi
}

run_ansible_playbook () {
		echo -e "\e[43;30m RUN ANSIBLE PLAYBOOK \e[0m"
		ansible-pull -U https://github.com/brotherkaif/ansible-config.git
}

welcome_message
setup_key
detect_os
configure_os
run_ansible_playbook
