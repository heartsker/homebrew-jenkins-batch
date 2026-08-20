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

Replace one token:

```sh
jenkins-batch setup --jenkins
jenkins-batch setup --issue
```

## Use

```sh
jenkins-batch run
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
