class Typeypipe < Formula
  desc "Shell wrapper that creates a mailbox system for external applications"
  homepage "https://github.com/dkoontz/TypeyPipe"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.1.0/typeypipe-v0.1.0-macos-x64.tar.gz"
    sha256 "605f2ed1171b17052b0fe29e4e6a39a5b3b59a3034989cfa84fe383fcfab167c"
  end

  on_linux do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.1.0/typeypipe-v0.1.0-linux-x64.tar.gz"
    sha256 "e1c81657acf4069e3a64da53616149466c6caf2d12c97759dea433cc12efab19"
  end

  def install
    bin.install "typeypipe"
  end

  test do
    assert_match "typeypipe", shell_output("#{bin}/typeypipe --help")
  end
end
