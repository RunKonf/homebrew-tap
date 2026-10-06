class Konf < Formula
  desc "CLI for Konf - Run your conference."
  homepage "https://konf.app"
  version "2026.10.06-8e08f32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.10.06-8e08f32/konf-aarch64-apple-darwin.tar.gz"
      sha256 "86dce7421f117c4b66a2f459e9fd8fa749ebfbcf9bd2d50a2553d1b952ec17e0"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.10.06-8e08f32/konf-x86_64-apple-darwin.tar.gz"
      sha256 "b2039c4f0b579595362e4d6487c326de50df52cefc00afc70a40a97fd5e5ee73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/RunKonf/konfctl/releases/download/2026.10.06-8e08f32/konf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06ebc1f332424299569b5dedfacb880c986df05698950530e723ed0cb5e1ff6c"
    else
      url "https://github.com/RunKonf/konfctl/releases/download/2026.10.06-8e08f32/konf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dba57c7e0da53b601b0e9a165d6c49b9784dc3455de8d75da255a3ef4d8a105f"
    end
  end

  def install
    bin.install "konf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konf --version")
  end
end
