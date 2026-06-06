class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.22.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.22.0/purple-3.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "cd1e26a0281bdd123ae8dbfcf30920e8ea447eb343432bb5a1f60011fc652915"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.22.0/purple-3.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "9c87cb539ae44d3ce4aa11c02c738640b2d01196fc27faf9863d773ba21a13fb"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
