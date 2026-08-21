class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.08.21-3c4c6eb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-3c4c6eb/konf-aarch64-apple-darwin.tar.gz"
      sha256 "3054584feb92b17e53b9dfd49542907bf14e415a2f5cc9332b583443a6130070"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-3c4c6eb/konf-x86_64-apple-darwin.tar.gz"
      sha256 "e0bfc0bdb216e212f9265df90cb8a1c7ffda72dc9da264aa38297e2a02aa52dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-3c4c6eb/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be6248e34f9f410229a4fe49873a4a8ea069d79218600893f977ef10c0c1411e"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.21-3c4c6eb/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d063731bd86684ab274f9d533b07547fa30ba3e42d8d4eba3fb11175d4a3b259"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
