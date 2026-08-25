class JenkinsBatch < Formula
  desc "Run and manage configured Jenkins builds"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.6.0/jenkins-batch-0.6.0.tar.gz"
  sha256 "b883a93789d743aad492bf5c73d1d62de0d0cd924b9b6033528321a5356e8def"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.6.0", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
    assert_match "cancel active work", shell_output("#{bin}/jenkins-batch help status")
  end
end
