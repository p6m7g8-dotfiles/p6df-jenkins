# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jenkins::on()
#
#  Environment:	 JENKINS_HOST JENKINS_URL JENKINS_USER_ID
#>
######################################################################
p6df::modules::jenkins::on() {

    p6_env_export JENKINS_HOST "localhost:8080"
    p6_env_export JENKINS_URL "http://$JENKINS_HOST"
    p6_env_export JENKINS_USER_ID "admin"

    p6_return_void
}
