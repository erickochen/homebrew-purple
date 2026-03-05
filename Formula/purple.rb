class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.13.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.13.0/purple-1.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "dad150cb1c700924554b17ee48219e44f4d79bb7df4e18d18023c7a8e4445c72"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.13.0/purple-1.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "3deb5c831170ef42d93bcb152e207ff4be82d0e2251ae69c0867799cda39e3bf"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
