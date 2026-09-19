class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.09.19-23bf708"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.19-23bf708/konf-aarch64-apple-darwin.tar.gz"
      sha256 "959ea9da6f4299275df6f89a4101c7257aa7e77cba88dc3b5cf2263809709a5b"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.19-23bf708/konf-x86_64-apple-darwin.tar.gz"
      sha256 "3c40956bae227006fc1c33b15dcfcceaa0fdb4f5fa530d51ea91040ceab05e27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.19-23bf708/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "003f971b2212ee1db11abb136c74ff468e92fb699d9389f2cadfdc4078e3794a"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.09.19-23bf708/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4b0775204db18bc375773839f3953da5ce4cc445378d9b3ef54aa274f38c2f7"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
