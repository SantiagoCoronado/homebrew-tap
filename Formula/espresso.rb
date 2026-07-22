class Espresso < Formula
  desc "Keep your Mac awake from the terminal — a tiny Amphetamine with ASCII art"
  homepage "https://github.com/SantiagoCoronado/espresso"
  url "https://github.com/SantiagoCoronado/espresso/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "8d4367d6ff5a041880d3930bdd3ec7e48ad137540bb6e564ff8a01bec324b6b3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "espresso"
  end

  test do
    assert_match "espresso 1.1.1", shell_output("#{bin}/espresso --version")
  end
end
