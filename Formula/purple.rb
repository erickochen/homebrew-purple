class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.19"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.19/purple-3.15.19-aarch64-apple-darwin.tar.gz"
      sha256 "488492439ad752e5612a3bdc6e38bb62e6cf2f2bc1ab2e604191c544da04cf6d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.19/purple-3.15.19-x86_64-apple-darwin.tar.gz"
      sha256 "41619c4d3f8c5b14df5737c76a3e3107b1cecaf68eb70bad5e9d06d117ff9ff1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
