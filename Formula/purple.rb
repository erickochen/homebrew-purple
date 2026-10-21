class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.31.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.31.0/purple-3.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d9602e598a47569adffa730fea66e9fd22dba32cca1980b1e2cf6e8d5bb9809"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.31.0/purple-3.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c0441680f5aa817dca34a99e5cae74a9801927dd0c57f6a08c69b47625125b7"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
