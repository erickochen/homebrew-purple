class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.4.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.4.0/purple-2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1c5e9e92eeb1b4e9593f85aa99a74e1ef056617193de4144c07a0517b1af6f0"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.4.0/purple-2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bbba8b15eb70c258f000682b31ce678a96f26a9fea5765cc71298e89d898c9e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
