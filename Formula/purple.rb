class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.1.0/purple-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff13912aa1e96dbc805e9d11808d9bf5f1f9ab313fcc0934ab22596e158ed9ee"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.1.0/purple-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "67608c223863e0ae8213c1217db26533dbc27ab3a94bac7133e5333e7f7ffcb9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
