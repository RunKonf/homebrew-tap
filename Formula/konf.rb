class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.09.14-1b7c707"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.14-1b7c707/konf-aarch64-apple-darwin.tar.gz"
      sha256 "463c86c5767460f90ee965fa080e1a5e3f1376f6de7dc2f0042915d71e94839b"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.14-1b7c707/konf-x86_64-apple-darwin.tar.gz"
      sha256 "8e04b5f32c5051f9c8401b3536992d47c9ec9708b74b2dae337ed9287567c494"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.14-1b7c707/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e16a3489640b10e0ad04ce6e8ab875db4b90c372eb5b30fe7caa6e31f2770ea"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.14-1b7c707/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f18362ed89a86d43e1de5453f586e4a12a1119536fbaf2a32d066a8a872e4555"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
