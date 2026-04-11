class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.0/purple-2.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c72e7929313554f826fe1ba48bc397278541c15fad408b9901dc8e1cdbcee29"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.0/purple-2.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e15d60a7dccc26b3cf11137dc91155b01e526832c0f761cd705fd156ccae4a2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
