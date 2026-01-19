# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jenkins::cli::get()
#
#  Environment:	 JENKINS_HOST P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::jenkins::cli::get() {

    local dir="$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR"/p6git
    mkdir -p "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR"/p6df-jenkins/libexec/
    curl -o "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR"/p6df-jenkins/libexec/jenkins-cli.jar http://"$JENKINS_HOST"/jnlpJars/jenkins-cli.jar

    p6_return_void
}
