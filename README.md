# p6df-jenkins

## Table of Contents


### p6df-jenkins
- [p6df-jenkins](#p6df-jenkins)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6df-jenkins)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6df-jenkins/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6df-jenkins/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6df-jenkins)
[![Gihub repo dependents](https://badgen.net/github/dependents-repo/p6m7g8/p6df-jenkins)](https://github.com/p6m7g8/p6df-jenkins/network/dependents?dependent_type=REPOSITORY)
[![Gihub package dependents](https://badgen.net/github/dependents-pkg/p6m7g8/p6df-jenkins)](https://github.com/p6m7g8/p6df-jenkins/network/dependents?dependent_type=PACKAGE)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Usage


### Aliases

- p6jC -> p6_jenkins_job_create
- p6jU -> p6_jenkins_jobs_update
- p6jg -> p6_jenkins_job_get
- p6jl -> p6_jenkins_jobs_list

### Functions

### p6df-jenkins:

#### p6df-jenkins/init.zsh:

- p6df::modules::jenkins::aliases::init()
- p6df::modules::jenkins::deps()
- p6df::modules::jenkins::init(_module, dir)
- p6df::modules::jenkins::langs()
- p6df::modules::jenkins::prompt::line()
- p6df::modules::jenkins::vscodes()


### p6df-jenkins/lib:

#### p6df-jenkins/lib/cli.sh:

- p6df::modules::jenkins::cli::get()

#### p6df-jenkins/lib/kubernetes.sh:

- p6df::modules::jenkins::kubernetes::forward()

#### p6df-jenkins/lib/local.sh:

- p6df::modules::jenkins::local::password()

#### p6df-jenkins/lib/on.sh:

- p6df::modules::jenkins::on()



## Hier
```text
.
├── cli.sh
├── kubernetes.sh
├── local.sh
└── on.sh

1 directory, 4 files
```
## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
