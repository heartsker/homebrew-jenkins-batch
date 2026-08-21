# Jenkins Batch

Launch a configured group of Jenkins jobs from macOS.

## Install

```sh
brew install heartsker/jenkins-batch/jenkins-batch
```

## Setup

```sh
jenkins-batch setup
```

The wizard shows the current setup and lets you import a shared config, edit
one section or job, and replace tokens. Tokens go to macOS Keychain, never to
JSON. Navigate with arrow keys and Enter. `run` opens the same setup when no
config exists.

## Use

```sh
jenkins-batch run
jenkins-batch run --select
jenkins-batch run --job "Simulator QA"
jenkins-batch run --all
jenkins-batch jobs
jenkins-batch run APP-123
jenkins-batch cancel APP-123 --dry-run
jenkins-batch doctor
```

## Configuration

```text
~/.config/jenkins-batch/config.json
```

Share [`examples/config.example.json`](examples/config.example.json) as a
starting point. It must not contain tokens or passwords; setup rejects them.

```text
{{user}}       resolved once during config import
{{branch}}     resolved branch name
{{issue_url}}  resolved issue URL
```

Upgrade with `brew upgrade jenkins-batch`. See `jenkins-batch help` for all
commands.

## License

MIT
