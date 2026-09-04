class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.09.04-db75e58"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.04-db75e58/konf-aarch64-apple-darwin.tar.gz"
      sha256 "0b9e7374cd28350623abe2a677ded8d3dde57bedf54dbff9e3efa3d31ec79dcf"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.04-db75e58/konf-x86_64-apple-darwin.tar.gz"
      sha256 "c6745c080c4c7bd212afc3e0d840ca60dc15256f701021617eb30092065187d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.04-db75e58/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a235935dadbbcf5482e86f6a59d8f361174db07bb53c7aff2fc99d6f6e702f3"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.04-db75e58/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf2e9eb0a286eb7a5edc55cb73d03ef16c8ac8598438ca255663d7cdc98db52"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
