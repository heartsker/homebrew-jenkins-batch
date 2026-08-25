# Jenkins Batch

Run and manage configured Jenkins builds from macOS.

## Install

```sh
brew install heartsker/jenkins-batch/jenkins-batch
```

## Setup

```sh
jenkins-batch setup
```

Use the arrow-key wizard to import a team config, change one field or job, and
save tokens to macOS Keychain. `run` opens setup automatically when needed.

## Run

```sh
jenkins-batch run
jenkins-batch run --select
jenkins-batch run --job "Simulator QA"
jenkins-batch run --all
jenkins-batch run APP-123
```

`--select` uses arrow keys and Space to choose any combination of builds.

## Status

```sh
jenkins-batch status
```

Select a build to cancel it, retry a failed attempt, or open it in Jenkins.
Use `jenkins-batch status --json` for scripts.

## Configuration

```text
~/.config/jenkins-batch/config.json
~/.local/state/jenkins-batch/builds.json
```

Share [`examples/config.example.json`](examples/config.example.json) as a
starting point. It must not contain tokens or passwords; setup rejects them.

```text
{{user}}       resolved once during config import
{{branch}}     resolved branch name
{{issue_url}}  resolved issue URL
```

Upgrade with `brew upgrade jenkins-batch`. Run `jenkins-batch doctor` to check
the local setup.

## License

MIT
