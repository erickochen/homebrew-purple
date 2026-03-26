class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.13.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.13.0/purple-2.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a7103a6b8f749542b04976dabfd54a62f447bedb908f58adf9aee474e5a729a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.13.0/purple-2.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "3f2a9ae0b328863e8e787eefd1a8f2249efe0ab34360441af5388f47feb4bb30"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
