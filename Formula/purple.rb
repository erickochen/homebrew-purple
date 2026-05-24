class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.17.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.17.1/purple-3.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "1062f5241d204f13e8313f4894a70cead6b70e4d581efc86015c4c9de3e9ae74"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.17.1/purple-3.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "33c05f930e885beb271861a3ffd71db36dd21204609e5419713c963ec0944c0a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
