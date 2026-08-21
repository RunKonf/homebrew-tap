class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.08.20-084fed1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.20-084fed1/konf-aarch64-apple-darwin.tar.gz"
      sha256 "fb3d60a8cc7e373c858d40d8e7fc8dc36efdd8b7cc0b334a9525efaeeef5eedc"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.20-084fed1/konf-x86_64-apple-darwin.tar.gz"
      sha256 "4c810c571bc16572e1670ac120205c9e176941ecb1b99814810d322a3e1cd121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.20-084fed1/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "896c35d2551d52d570c0caf0389912d46a5449ae38e6d32b138c1e8165a430d7"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.20-084fed1/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dca4f98cc6153db8cce737c3a7531c5eaca4af16f04670ea95c92f4c224ab8fa"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
