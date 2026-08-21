class JenkinsBatch < Formula
  desc "Launch a configured group of Jenkins jobs"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.5.0/jenkins-batch-0.5.0.tar.gz"
  sha256 "ef5b24105404e4edc10c16a028aa34bee5ead59a095a38e1300d8d03efd1ea2d"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.5.0", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
  end
end
