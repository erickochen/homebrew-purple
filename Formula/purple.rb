class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.26.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.26.0/purple-1.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "ccbf78d68edf5b47c922eb4a0296d6d508c5af1ae043024417eb378ea1342565"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.26.0/purple-1.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "7fc8db1fce724736e0f0fbc4d710b82b9daf7ea4823bda985e0f8bfa78ee36fb"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
