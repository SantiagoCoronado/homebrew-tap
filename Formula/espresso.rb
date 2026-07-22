class Espresso < Formula
  desc "Keep your Mac awake from the terminal — a tiny Amphetamine with ASCII art"
  homepage "https://github.com/SantiagoCoronado/espresso"
  url "https://github.com/SantiagoCoronado/espresso/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0f461585c41b3b26c83ec40211ed1d37ed3330805d75827d45de14d4b27f692a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "espresso"
  end

  test do
    assert_match "espresso 1.1.0", shell_output("#{bin}/espresso --version")
  end
end
