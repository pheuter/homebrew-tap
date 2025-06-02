class Agnt < Formula
  desc "Terminal chat client for Anthropic's Claude API"
  homepage "https://github.com/pheuter/agnt"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-apple-darwin.tar.gz"
      sha256 "26ddda4dbe8159de1e435ba348027fd4d90c9d80882362875ae1f16afd62b5ba"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-apple-darwin.tar.gz"
      sha256 "c6fc8e8b9f0e90c919efdfd3752a4aa2b9f432b7e804564f75b842b4ba6c1c72"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bd3d2ea541b8b63f59b606ef340be46596536fbca6f1476930552c7a0e4b912"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d555ca54f3abb9afff7044f2ef428f37e78cacbeb27ae6a549c516c9348c19c0"
    end
  end

  def install
    bin.install "agnt"
  end

  test do
    assert_match "agnt", shell_output("#{bin}/agnt --help", 2)
  end
end
