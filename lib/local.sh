# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jenkins::local::password()
#
#  Environment:	 HOME
#>
######################################################################
p6df::modules::jenkins::local::password() {

    p6_file_display "$HOME/.jenkins/secrets/initialAdminPassword"

    p6_return_void
}
