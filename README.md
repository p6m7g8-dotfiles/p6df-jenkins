# P6's POSIX.2: p6df-jenkins

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Aliases](#aliases)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- `p6jC` -> `p6_jenkins_job_create`
- `p6jg` -> `p6_jenkins_job_get`
- `p6jl` -> `p6_jenkins_jobs_list`
- `p6jU` -> `p6_jenkins_jobs_update`

### Functions

#### p6df-jenkins

##### p6df-jenkins/init.zsh

- `p6df::modules::jenkins::aliases::init()`
- `p6df::modules::jenkins::deps()`
- `p6df::modules::jenkins::init(_module, dir)`
- `p6df::modules::jenkins::langs()`
- `p6df::modules::jenkins::prompt::mod()`
- `p6df::modules::jenkins::vscodes()`

#### p6df-jenkins/lib

##### p6df-jenkins/lib/cli.sh

- `p6df::modules::jenkins::cli::get()`

##### p6df-jenkins/lib/kubernetes.sh

- `p6df::modules::jenkins::kubernetes::forward()`

##### p6df-jenkins/lib/local.sh

- `p6df::modules::jenkins::local::password()`

##### p6df-jenkins/lib/on.sh

- `p6df::modules::jenkins::on()`

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli.sh
│   ├── kubernetes.sh
│   ├── local.sh
│   └── on.sh
├── libexec
├── README.md
└── share
    └── pipelines
        └── first.jenkins

5 directories, 7 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
