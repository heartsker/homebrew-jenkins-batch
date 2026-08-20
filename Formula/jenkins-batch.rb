class JenkinsBatch < Formula
  desc "Launch a configured group of Jenkins jobs"
  homepage "https://github.com/heartsker/homebrew-jenkins-batch"
  url "https://github.com/heartsker/homebrew-jenkins-batch/releases/download/v0.1.1/jenkins-batch-0.1.1.tar.gz"
  sha256 "4f96cde749c20a484684f423402a2a24c4596c83806492235b3ede89e93c233f"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  def install
    bin.install "bin/jenkins-batch"
  end

  test do
    assert_match "jenkins-batch 0.1.1", shell_output("#{bin}/jenkins-batch version")
    assert_match "jenkins-batch setup", shell_output("#{bin}/jenkins-batch help setup")
  end
end
