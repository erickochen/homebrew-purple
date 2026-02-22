class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.5/purple-0.10.5-aarch64-apple-darwin.tar.gz"
      sha256 "40212ee78007f6891604d18d32c6d7573ffa778530cfd2f8bd7e908f724fc30d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.5/purple-0.10.5-x86_64-apple-darwin.tar.gz"
      sha256 "da5234c80086cda1f26982f2d58daea2c614dea5aecafbd7dbe1ebfb7a32b1d9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
