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
# Function: p6df::modules::jenkins::env::init(_module, _dir)
#
#  Args:
#	_module -
#	_dir -
#
#  Environment:	 JENKINS_HOST P6_JENKINS_HOST
#>
######################################################################
p6df::modules::jenkins::env::init() {

  local _module="$1"
  local _dir="$2"
  p6_env_export JENKINS_HOST "$P6_JENKINS_HOST"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::aliases::init(_module, _dir)
#
#  Args:
#	_module -
#	_dir -
#
#>
######################################################################
p6df::modules::jenkins::aliases::init() {

    local _module="$1"
    local _dir="$2"
    p6_alias "p6jl" "p6_jenkins_jobs_list"
    p6_alias "p6jg" "p6_jenkins_job_get"
    p6_alias "p6jC" "p6_jenkins_job_create"
    p6_alias "p6jU" "p6_jenkins_jobs_update"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::jenkins::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_DIR/akin-ozer/cc-devops-skills/devops-skills-plugin/skills/jenkinsfile-generator"            "$HOME/.claude/skills/jenkinsfile-generator"
  p6_file_symlink "$P6_DFZ_SRC_DIR/akin-ozer/cc-devops-skills/devops-skills-plugin/skills/jenkinsfile-validator"            "$HOME/.claude/skills/jenkinsfile-validator"

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
# Function: p6df::modules::jenkins::vscodes()
#
#>
######################################################################
p6df::modules::jenkins::vscodes() {

    # jenkins
    p6df::modules::vscode::extension::install jmMeessen.jenkins-declarative-support

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::profile::mod()
#
#>
######################################################################
p6df::modules::jenkins::profile::mod() {

    p6_jenkins_prompt_info
}
