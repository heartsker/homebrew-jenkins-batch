class JenkinsBatch < Formula
  desc "Launch a configured group of Jenkins jobs"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.5.1/jenkins-batch-0.5.1.tar.gz"
  sha256 "e407487fa3633d83201d13c58e8f180b57e262bcd454c9bd0ef7c036af03249d"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.5.1", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
  end
end
