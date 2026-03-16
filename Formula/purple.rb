class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.0.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.0.2/purple-2.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "d83aba37a870b0eedbe67e0bf8a861060af54ef648e5a53db5b28ab9b35615a8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.0.2/purple-2.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "aeada002d3f7564ba41efbb8f9175da7a61e10ce0d75a5bc38e39858de05a30c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
