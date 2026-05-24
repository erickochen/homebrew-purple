class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.1/purple-3.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "7fbeaed7b5dac76e5cb81d5390366989a101190d18fa0f4226bf74afa1b38e77"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.1/purple-3.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "3b07cca841fd6abff5242cd61a6bf09fcea41743265ddce16e540eb8202c4154"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
