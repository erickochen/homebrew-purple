class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.42.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.42.3/purple-2.42.3-aarch64-apple-darwin.tar.gz"
      sha256 "07db8f70e5527ae9bf6a26d4827f11a48f02604e75bc56be487f902ea3d26fb2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.42.3/purple-2.42.3-x86_64-apple-darwin.tar.gz"
      sha256 "7562c9acdc2ba02075ba4ef568bfb4e82925cb6b635074eed7542fae122a4c1d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
