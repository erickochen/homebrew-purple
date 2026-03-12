class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.25.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.25.1/purple-1.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "a5937f43742b405eed0711c313a6456f81b15aabcab0d2365acb3f05720f06da"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.25.1/purple-1.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "48bc8cbfe34e6a51bcac111beb3860613f3bdbb819534a2b22df1bd587849d85"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
