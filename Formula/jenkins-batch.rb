class JenkinsBatch < Formula
  desc "Run and manage configured Jenkins builds"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.7.0/jenkins-batch-0.7.0.tar.gz"
  sha256 "e18ac3dff581b996d23eff6fcb1c26dad24b355527aae6f15583a5f8fd1fb039"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.7.0", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
    assert_match "cancel active work", shell_output("#{bin}/jenkins-batch help status")
  end
end
