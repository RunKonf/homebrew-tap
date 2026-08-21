class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.08.21-c58f387"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-c58f387/konf-aarch64-apple-darwin.tar.gz"
      sha256 "cf9b2a269cf5b7a43da59e5d81265ce84af44b4b75214d61d2e0579c62ae0c41"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-c58f387/konf-x86_64-apple-darwin.tar.gz"
      sha256 "94abec9d8961a019bead20b46d866a8e1eb6d713ac252e122e44d2444d613236"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-c58f387/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba27c3d7805134253d70b2c0e1d620ad6111ba7443c7d56630044e88d762dc23"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-c58f387/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17ede9f644914c410d4db469bf67b06c252fa171d2cdd2d672e29501694b36d0"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
