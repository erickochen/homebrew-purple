class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.7.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.7.0/purple-3.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1ed88c9549f6e1fd3f011cb9bd3756775969e22c354bc8343ec8713ac2b64d7"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.7.0/purple-3.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "35ed33c8470fd7819014c57a98d9fda5daeae8ac668c9609f5f692dcfdf8250d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
