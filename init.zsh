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
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::init()
#
#  Environment:	 JENKINS_HOST
#>
######################################################################
p6df::modules::jenkins::init() {

    JENKINS_HOST=$P6_JENKINS_HOST

    p6df::modules::jenkins::aliases::init
    p6df::modules::jenkins::prompt::init
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::prompt::init()
#
#>
######################################################################
p6df::modules::jenkins::prompt::init() {

  p6df::core::prompt::line::add "p6df::modules::jenkins::prompt::line"
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::aliases::init()
#
#>
######################################################################
p6df::modules::jenkins::aliases::init() {

    alias p6jl=p6_jenkins_jobs_list
    alias p6jg=p6_jenkins_job_get
    alias p6jc=p6_jenkins_job_create
    alias p6ju=p6_jenkins_jobs_update
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::prompt::line()
#
#>
######################################################################
p6df::modules::jenkins::prompt::line() {

    p6_jenkins_prompt_info
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::cli::get()
#
#  Depends:	 p6_file
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::jenkins::cli::get() {

    local dir=$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6git
    mkdir -p $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-jenkins/libexec/
    local dir=$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6git
    curl -o $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-jenkins/libexec/jenkins-cli.jar http://$JENKINS_HOST/jnlpJars/jenkins-cli.jar
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::local::password()
#
#  Depends:	 p6_file
#  Environment:	 HOME
#>
######################################################################
p6df::modules::jenkins::local::password() {

    p6_file_display "$HOME/.jenkins/secrets/initialAdminPassword"
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::forward()
#
#>
######################################################################
p6df::modules::jenkins::forward() {

    kubectl port-forward statefulset.apps/jenkins 8080:8080 &
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::on()
#
#  Environment:	 JENKINS_HOST JENKINS_URL JENKINS_USER_ID
#>
######################################################################
p6df::modules::jenkins::on() {

    export JENKINS_HOST=localhost:8080
    export JENKINS_URL=http://$JENKINS_HOST
    export JENKINS_USER_ID=admin
}
