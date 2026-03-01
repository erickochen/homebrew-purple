class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.8.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.8.2/purple-1.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "c8e3bbbcf2ed35c5902b35af60d4e68490b9a29a661b23ef3569b93544bf9db3"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.8.2/purple-1.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "b2944495602d55d477ba1e506036e6ef56be30c259480044e980d35c61756a7c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
