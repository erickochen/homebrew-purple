class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.2/purple-0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "2b6ca73bd4329ceba72f7a827340b29d8625717f09a1f92469b173c2963c1067"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.2/purple-0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "1afc3204aca9f2fc3d88df94164160f0b0993f185c58d4cbb924e3b29c0dc4f4"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
