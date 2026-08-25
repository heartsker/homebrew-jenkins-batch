# Security

Please report security issues through GitHub private vulnerability reporting.
Do not include production credentials, private server URLs, or console logs in
public issues.

Jenkins Batch stores API credentials in macOS Keychain. Its JSON configuration
contains endpoints and job definitions, so users should keep that local file out
of public repositories even though it contains no tokens.

Local build history may contain branch names, parameters, and Jenkins URLs. It
is stored with user-only permissions and should not be shared publicly.
