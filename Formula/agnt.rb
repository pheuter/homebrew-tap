class Agnt < Formula
  desc "Terminal chat client for Anthropic's Claude API"
  homepage "https://github.com/pheuter/agnt"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-apple-darwin.tar.gz"
      sha256 "fa23f01d373f704a3f36ead3489eec70fdf58d37f6187fb058194b2f59fbce98"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-apple-darwin.tar.gz"
      sha256 "faccc2019ea674f409940d854e76059d25ff2a306d54faff2cfedeeccfae42fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e51e341183bd92b8c806a912efde69f6ed5060bf92961e9db6b802feee636fbb"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f48e7dda0ecd6954d4a0c42c23524299802307a6a463d28c360faa210963dc49"
    end
  end

  def install
    bin.install "agnt"
  end

  test do
    assert_match "agnt", shell_output("#{bin}/agnt --help", 2)
  end
end
