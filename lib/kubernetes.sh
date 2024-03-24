# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jenkins::kubernetes::forward()
#
#>
######################################################################
p6df::modules::jenkins::kubernetes::forward() {

    kubectl port-forward statefulset.apps/jenkins 8080:8080 &

    p6_return_void
}
