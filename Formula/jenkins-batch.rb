class JenkinsBatch < Formula
  desc "Launch a configured group of Jenkins jobs"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.4.0/jenkins-batch-0.4.0.tar.gz"
  sha256 "0fe483232c847febda6d4a5e43ec7206c024cc7b3d40d455957be73a60c26bc4"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.4.0", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
  end
end
