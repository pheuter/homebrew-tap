class Agnt < Formula
  desc "Terminal chat client for Anthropic's Claude API"
  homepage "https://github.com/pheuter/agnt"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-apple-darwin.tar.gz"
      sha256 "0cbe682a556c1302b6e8e1f3f7f4c25e44d9c3bcf09820ec94c46316242e9171"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-apple-darwin.tar.gz"
      sha256 "9e836165a2725409892589da2b106120d816762b890dc88683e5d94a3d893647"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "099b143eeb2fb62a3798529ed14c4bdf55999326cee912f3611b59a62e0b903e"
    else
      url "https://github.com/pheuter/agnt/releases/download/v#{version}/agnt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "902927819f48e838eec61e4f7f1c2dee4c08158bab2e0f7d788e882572c72bab"
    end
  end

  def install
    bin.install "agnt"
  end

  test do
    assert_match "agnt", shell_output("#{bin}/agnt --help", 2)
  end
end
