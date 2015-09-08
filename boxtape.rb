require "formula"

class Srcclr < Formula
  homepage "http://boxtape.io"
  url "http://localhost:8000/boxtape.zip"

  def install
      inreplace "brew/boxtape", "##PREFIX##", "#{prefix}"
      prefix.install "lib"
      bin.install "bin/boxtape"
  end
end
