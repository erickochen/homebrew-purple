class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.0.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.0.2/purple-1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "aaebf6e70628a3fdd4331dea6a5eb0c8a4f277b41e3a07ca235ba677ff2aec67"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.0.2/purple-1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "13e6810659bbb1470243d6e15891fc693344efb07d17acda336ccf61c70d5e24"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
