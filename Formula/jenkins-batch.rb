class JenkinsBatch < Formula
  desc "Launch a configured group of Jenkins jobs"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.3.0/jenkins-batch-0.3.0.tar.gz"
  sha256 "2b576afcf6f98a99921bda2c5b487bf7670ee5a007d830f108ebe931e4797f4a"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.3.0", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
  end
end
