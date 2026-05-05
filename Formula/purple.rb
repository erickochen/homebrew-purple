class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.4.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.4.1/purple-3.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "43b6200b47d6a93ae6ed8ea0d8c162bb73cdb2a77bc829ba3a60ba044a505945"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.4.1/purple-3.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "05a1a48482fd08f90778a862e513686571551361d9790826c40715cd370744ea"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
