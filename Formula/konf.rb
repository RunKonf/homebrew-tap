class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.09.22-1a23899"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.22-1a23899/konf-aarch64-apple-darwin.tar.gz"
      sha256 "57bd7ff47c807ed6e4ec7b98a55f5da4c5f794ed1734d3dfc78cdad567c41955"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.22-1a23899/konf-x86_64-apple-darwin.tar.gz"
      sha256 "f9ca6a075f545e1721c76a975e2b4e4bd437828f40d9af467f938eda5012b59d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.22-1a23899/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e143509b45631933463aa6b162ee16f54097c4cd9ba706f15711f4c89d1a2b07"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.22-1a23899/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc1672c2b2611e01b0eb11be972042c6a77d6eec8d9b51b591f34159fa110db1"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
