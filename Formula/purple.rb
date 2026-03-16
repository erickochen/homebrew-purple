class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.0.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.0.4/purple-2.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "10e1aa749cdc8ff73bd514a0066d190002fc1c271b465d1a5143385cc44aa7a8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.0.4/purple-2.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "e487668f07a56fad07ccff16c085fbb64590d37d79b7fe44146c2a79be9c4ac1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
