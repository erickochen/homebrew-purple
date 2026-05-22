class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.12"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.12/purple-3.15.12-aarch64-apple-darwin.tar.gz"
      sha256 "6a655c1f6b522d6e06e47834b8d62cc52874c16a5ec65fe8a9ca7c6462679a87"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.12/purple-3.15.12-x86_64-apple-darwin.tar.gz"
      sha256 "31bfea393fb2707e00861f52062d655368da4a58ca2c6121af7228d71749e278"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
