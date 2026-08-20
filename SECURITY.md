# Security

Please report security issues through GitHub private vulnerability reporting.
Do not include production credentials, private server URLs, or console logs in
public issues.

Jenkins Batch stores API credentials in macOS Keychain. Its JSON configuration
contains endpoints and job definitions, so users should keep that local file out
of public repositories even though it contains no tokens.
