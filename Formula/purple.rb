class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.4.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.4.2/purple-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "b0c8441c37d9dd4a268bcbf0c477a010e04b0c7e7e0b20c49698d82d9db01884"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.4.2/purple-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "b4d58ba110ccfb2a33be262a3c171973ff2816ac4beb2013b90cb290422ec279"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
