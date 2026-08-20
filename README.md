# Jenkins Batch

Launch a configured group of Jenkins jobs from macOS.

## Install

```sh
brew install heartsker/jenkins-batch/jenkins-batch
```

## Setup

Use a shared, secret-free config:

```sh
jenkins-batch setup --config team.json
```

Setup imports the file, asks for `{{user}}` if present, then asks for Jenkins
and Jira tokens. Token creation links are read from the config and printed next
to each prompt. Tokens go to macOS Keychain, never to JSON.

Without a shared config:

```sh
jenkins-batch setup
```

`run` starts this wizard automatically when no config exists. Each job has a
name, Jenkins URL, parameters, and a default-enabled flag.

Replace one token:

```sh
jenkins-batch setup --jenkins
jenkins-batch setup --issue
```

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

Edit it without opening JSON:

```sh
jenkins-batch config wizard
jenkins-batch config wizard jobs
jenkins-batch config wizard jenkins
```

The wizard edits one field or section at a time, shows a summary before saving,
and can quit without changing the current config.

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
