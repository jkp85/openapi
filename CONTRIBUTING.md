# Contributing Guidelines

Interested in making a contribution? Great! Just read through this guide and you should be good to go! If you have any questions or concerns, feel free to reach out to us in our Slack [community channel](https://slackin-pypmyuhqds.now.sh/).

## TOC

- [Forks](#forks)
- [Commit Messages](#commit-messages)
- [Issues](#issues)
- [Contribution tips and guidelines](#contribution-tips-and-guidelines)

## Forks

We encourage the use of forks, even for our core maintainers. The following steps describe the procedure to create a new fork and contribute back to the upstream repo:

1. Fork `https://github.com/3blades/3blades`.
1. Clone `https://github.com/your-username/3blades`.
1. Specify a new remote upstream repository that will be synced with the fork: `git remote add upstream https://github.com/3blades/3blades.git`.
1. Checkout your fork's local `feature` or `fix` branch: `git checkout my-fix-or-feature-branch`.
1. Make the necessary changes in your `my-fix-or-feature-branch` branch.
1. Push changes to your fork: `git push origin master`.
1. Submit a pull request to `https://github.com/3blades/3blades` and await review.

> Note: it's possible that upstream master branch was updated while you were working. Update your local branch with latest commits from upstream master: `git fetch upstream`, `git checkout my-fix-or-feature-branch`, `git merge upstream/master`.

## Commit Messages

Commit messages in react-frontend start with one of the following prefixes:

- `fix`: If the commit is working towards a bug fix.
- `feature`: If the commit is working towards a new feature.
- `chore`: If the commit was a chore, like updating a dependency or updating Travis.
- `doc`: If the commit is a change to documentation.
- `test`: If the commit contains a change to the test suite.

Add a `/` and a tidy description after the prefix, such as `docs/correct-title`.

## Issues

When reporting issues:

- Include the steps required to reproduce the problem. This information will help us review and fix your issue faster.
- If applicable, include stack trace.
- Big log files are best viewed in gist (https://gist.github.com). Make sure your gist is public.
- Log files may have sensitive information, please remove this information if at all possible.

> We have included an `Issue Template` as a guide.

## Quick contribution tips and guidelines

This section gives contributors some guidelines.

### We welcome all pull requests

Developing a fix or new feature, however small, takes time. So thank you! Even the smallest corrections or enhancements matter, and we will do everything possible to process them in a timely manner. We will also make sure you get credit for your contributions.

### Design and cleanup proposals

We are constantly cleaning code and re factoring, and understand there is almost always a better way to do things. If so, let us know! We love new perspectives, particularly when it helps improve the underlying product.

### Talking to other 3Blades users and contributors

We primarily use our Slack community channel to communicate with 3Blades users and contributors. You can sign up for a free account [here](https://slackin-pypmyuhqds.now.sh/).

### Conventions and Coding Style

Submit unit tests with your changes. We primarily use [nosetests](http://nose.readthedocs.io/en/latest/usage.html) for Python, [jest](https://facebook.github.io/jest/) for React and [testing](https://golang.org/pkg/testing/) for Golang.

Update the documentation when creating or modifying features. Test your
documentation changes for clarity, concision, and correctness, as well as a
clean documentation build. We base our style guide on the [AP Stylebook](https://en.wikipedia.org/wiki/AP_Stylebook).

For coding style, we base ourselves on:

- [AriBnb style guide](https://github.com/3blades/javascript) for JavaScript
- [PEP8](https://www.python.org/dev/peps/pep-0008/) for Python
- [Effective Go](https://golang.org/doc/effective_go.html) for Golang

The PR should trigger automated style checks.

### Merge approval

The master branch needs to be as healthy as possible. We will do our best to merge code and documentation quickly, but need to balance that with sanity checks.

Maintainers may use LGTM (Looks Good To Me) for documents and comments to
indicate acceptance.

### Sign your work

Our projects are open source and we need to do everything possible to keep it that way. By signing, you certify that you wrote the code or that you have the right to send it our way. We use the [developer certificate of origin](http://developercertificate.org/) text to certify contributions.

Every completed PR must have a signature before we can merge:

    Signed-off-by: Joe Smith <joe.smith@email.com>

Please use your real name.

If you set your `user.name` and `user.email` git configs, you can sign your
commit automatically with `git commit -s`.

## 3Blades community guidelines

Refer to our [Code of Conduct](CODE_OF_CONDUCT.md) for specifics. It is based on the Contributor Covenant, version 1.4, available at http://contributor-covenant.org/version/1/4.
