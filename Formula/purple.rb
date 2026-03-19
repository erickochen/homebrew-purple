class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.7.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.7.0/purple-2.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "b962eabea9fed8a33b09b0e6e6194281baeb2a526edac615c95f42e7e634fe6d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.7.0/purple-2.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa5be2a5f4b22c6c215d19d83865cd2eb66f68a14f5faa38cbb4d7cb8c39fc22"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
