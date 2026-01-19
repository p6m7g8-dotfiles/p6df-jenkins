# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jenkins::deps()
#
#>
######################################################################
p6df::modules::jenkins::deps() {
    ModuleDeps=(
        p6m7g8-dotfiles/p6df-java
        p6m7g8-dotfiles/p6jenkins
    )
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::vscodes()
#
#>
######################################################################
p6df::modules::jenkins::vscodes() {

    # jenkins
    code --install-extension jmMeessen.jenkins-declarative-support

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::langs()
#
#>
######################################################################
p6df::modules::jenkins::langs() {

    p6df::modules::jenkins::cli::get

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#  Environment:	 P6_JENKINS_HOST
#>
######################################################################
p6df::modules::jenkins::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  JENKINS_HOST=$P6_JENKINS_HOST

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::aliases::init()
#
#>
######################################################################
p6df::modules::jenkins::aliases::init() {

    p6_alias "p6jl" "p6_jenkins_jobs_list"
    p6_alias "p6jg" "p6_jenkins_job_get"
    p6_alias "p6jC" "p6_jenkins_job_create"
    p6_alias "p6jU" "p6_jenkins_jobs_update"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::prompt::mod()
#
#>
######################################################################
p6df::modules::jenkins::prompt::mod() {

    p6_jenkins_prompt_info
}
