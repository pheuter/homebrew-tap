class Agnt < Formula
  desc "Terminal chat client for Anthropic's Claude API"
  homepage "https://github.com/pheuter/agnt"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-apple-darwin.tar.gz"
      sha256 "d9eec055f0ba6dc4715d4f740756e04e008c1a4f20c2c3fafbe71526883a800c"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_AARCH64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9eec055f0ba6dc4715d4f740756e04e008c1a4f20c2c3fafbe71526883a800c"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb8978aecb4e9f9f59524e39c0c5b9f12968849c140632b5090a4acd45aa721d"
    end
  end

  def install
    bin.install "agnt"
  end

  test do
    assert_match "agnt", shell_output("#{bin}/agnt --help", 2)
  end
end