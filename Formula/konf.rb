class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.08.23-87c1969"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.23-87c1969/konf-aarch64-apple-darwin.tar.gz"
      sha256 "f1f0faa302f20422dcb9a89953631eaa55508f14975f76fb3ecd8d1dcc5ca65c"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.23-87c1969/konf-x86_64-apple-darwin.tar.gz"
      sha256 "eb95f79470a4515b7b78edc37121e87f542aaa56b323b5048abbc4ed68ccfe9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.23-87c1969/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3db2ed17b179c1c9342b5ff668e1a7679235c065cf1c74de9ed4cdb6ddbdae40"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.08.23-87c1969/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6e5ee0a8bd4b947f01577916d4ceaa91ab8ae5e95790906c8d0bc5647cff565"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
