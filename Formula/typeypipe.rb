class Typeypipe < Formula
  desc "Shell wrapper that creates a mailbox system for external applications"
  homepage "https://github.com/dkoontz/TypeyPipe"
  url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.1.0/typeypipe-v0.1.0-macos-x64.tar.gz"
  sha256 "605f2ed1171b17052b0fe29e4e6a39a5b3b59a3034989cfa84fe383fcfab167c"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "typeypipe"
  end

  test do
    assert_match "typeypipe", shell_output("#{bin}/typeypipe --help")
  end
end