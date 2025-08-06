class Typeypipe < Formula
  desc "Shell wrapper that creates a mailbox system for external applications"
  homepage "https://github.com/dkoontz/TypeyPipe"
  license "MIT"
  version "0.3.0"

  on_macos do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.3.0/typeypipe-v0.3.0-macos-x64.tar.gz"
    sha256 "86d4113740d2772c0e0bf189e532d56aab3325d438ca4c2125543318b05073c8"
  end

  on_linux do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.3.0/typeypipe-v0.3.0-linux-x64.tar.gz"
    sha256 "24e5ef5905d32a76175c62ca5115484acbd870011de14f516fda56438bb461c3"
  end

  def install
    bin.install "typeypipe"
  end

  test do
    assert_match "typeypipe", shell_output("#{bin}/typeypipe --help")
  end
end
