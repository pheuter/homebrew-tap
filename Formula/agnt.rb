class Agnt < Formula
  desc "Terminal chat client for Anthropic's Claude API"
  homepage "https://github.com/pheuter/agnt"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_X86_64"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_AARCH64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AARCH64"
    end
  end

  def install
    bin.install "agnt"
  end

  test do
    assert_match "agnt", shell_output("#{bin}/agnt --help", 2)
  end
end