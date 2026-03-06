class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.15.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.15.0/purple-1.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "fbc32a41392bac4a1dc33cbf57a73ee8db398e340584910f0f27c2274a2aff39"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.15.0/purple-1.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "49ef8a8c202d9bcfaae532041661cc8924c3030b151f982709db93c9145a5d91"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
