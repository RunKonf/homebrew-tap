class Cnctl < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.07.28-9542f2b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.07.28-9542f2b/konf-aarch64-apple-darwin.tar.gz"
      sha256 "87a71716fa62685c208c8d705a27f8d8a0d995f3b139241c80b9b321bb3b4ef2"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.07.28-9542f2b/konf-x86_64-apple-darwin.tar.gz"
      sha256 "477ee7c77df92604ff4f19f6283011159191300834b0d8c6ba7b0afcc86a84e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.07.28-9542f2b/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d270d15f5826b4dc9f01c5392a9614f74b556eed70485b33001242c658518a39"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.07.28-9542f2b/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64093d3e67267d5b251dc926bc7c9805c50f732a0d0d9e1aa55a66e24ea93b67"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
