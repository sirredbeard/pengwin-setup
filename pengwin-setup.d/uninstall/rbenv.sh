#!/bin/bash

source $(dirname "$0")/uninstall-common.sh

function main()
{

local ruby_conf="/etc/profile.d/rbenv.sh"

echo "Uninstalling rbenv"

rem_dir "$HOME/.rbenv"

echo "Removing PATH modifier..."
sudo_rem_file "/etc/profile.d/ruby.sh"

# Check if Ruby on RAILS previously installed
if [[ -d "$HOME/.gem"  ]] ; then
	echo "Ruby on RAILS previously installed"
	rm -rf "$HOME/.gem"

	echo "Offering nodejs uninstall"
	if (whiptail --title "rbenv" --yesno "It seems Ruby on RAILS was previously installed, for which nodejs would have been installed. Would you like to uninstall this too?" 8 85) ; then
		bash $(dirname "$0")/nodejs.sh
	else
		echo "... user cancelled"
	fi
fi

}

if show_warning "rbenv" "$@" ; then
	main "$@"
fi
