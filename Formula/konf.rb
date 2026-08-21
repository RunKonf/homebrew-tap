class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.08.21-abf2aa3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-abf2aa3/konf-aarch64-apple-darwin.tar.gz"
      sha256 "f926aafd86d8f634e91e592edaa30838814f505f9feda5329e06d449f55518b6"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-abf2aa3/konf-x86_64-apple-darwin.tar.gz"
      sha256 "f3f00028b4be0da582a3b7f3adad490c5c10f0d22d40a8a60997c84de386e5cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-abf2aa3/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8460681ee57a9fd5310600f1fb7970ea6789df01f6125fb73bd0d6d9ff2fe0f2"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-abf2aa3/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "021aa3b6d02f2ddb21f5c33427edb71ea83116a494f661826abec7c6368c0e60"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
