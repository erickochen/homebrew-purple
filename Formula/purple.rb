class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.21.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.21.1/purple-3.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "7d9171d5317d045c91f5f0f9dce65135d9a4f34d8d27757e1ad7df484230f7cf"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.21.1/purple-3.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "5be945f5714be1030b5fcc86a0c952b1ae66b8644c0be03e735d7c7f395650a6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
