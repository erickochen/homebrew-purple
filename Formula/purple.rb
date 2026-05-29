class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.20.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.20.1/purple-3.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "776a9abb147615272aa9a4ad3bc933877fe0f16270494ac03aa882cc6b595fae"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.20.1/purple-3.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "dfd9f71ff33280812bf3b1b0c9d329b4dd43a8d98cb8e7c270e22f9ebbf31e2a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
