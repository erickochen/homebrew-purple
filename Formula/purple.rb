class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.0.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.0.0/purple-3.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "31da5147aa54001b578a31ac14e8079d343462de6279ff03397ea91aeb01d0e4"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.0.0/purple-3.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e7b2d89e9e9e425e17dcf22eccf1574e92c11ca76aaa15f87b3e053009f173e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
