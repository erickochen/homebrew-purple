class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.43.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.43.0/purple-2.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd3640f0d456bc5fe59b2220aebd34cb3a76b0252669c908a5f3f8e50c611e6c"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.43.0/purple-2.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "2426fb7756bfff58d78afdf5f6585a4e412f220ec9562a4ecbb7a2070465f37a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
