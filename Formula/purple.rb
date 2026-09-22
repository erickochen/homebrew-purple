class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.30.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.30.0/purple-3.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "72cb251c1c740e01710cf4c882748639e2f14fa3e69eec48076d7afaeb4af9ae"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.30.0/purple-3.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "416a0fea85406d03f590ef5e96861d76ad97558e27c83b9f88bf00d26b9c1f32"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
