class Typeypipe < Formula
  desc "Shell wrapper that creates a mailbox system for external applications"
  homepage "https://github.com/dkoontz/TypeyPipe"
  license "MIT"
  version "0.2.0"

  on_macos do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.2.0/typeypipe-v0.2.0-macos-x64.tar.gz"
    sha256 "a881dd2881a3b890326bf2f6b7549d299e81b006d26c7f91deeae630b664e402"
  end

  on_linux do
    url "https://github.com/dkoontz/TypeyPipe/releases/download/v0.2.0/typeypipe-v0.2.0-linux-x64.tar.gz"
    sha256 "b3c034e02961f28c2819f0b0cf800e474b141928acc9cacbf560e39027da1914"
  end

  def install
    bin.install "typeypipe"
  end

  test do
    assert_match "typeypipe", shell_output("#{bin}/typeypipe --help")
  end
end
