class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.5.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.5.0/purple-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "28b9d71a2114a99359958a32ffbdc4e1226014f4f9e3df9225666d42cb3ff0c3"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.5.0/purple-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "c36364496835b0bd36606942e3a6aef40cb0ef76190f356a9f282834c45a122d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
