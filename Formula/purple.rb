class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.11.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.11.0/purple-1.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a3a7f321d2c0bd51dbf2aa06b3871c3071d4fd592e3e469795a353e6be51f54"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.11.0/purple-1.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "f5f32a2e649f1426661d11633a2b065a2f6d9b3c41fe8b221fc3cf2641c92979"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
