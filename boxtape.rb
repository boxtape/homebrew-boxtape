require "formula"

class Boxtape < Formula
  homepage "http://boxtape.io"
  url "http://localhost:8000/boxtape-0.4.zip"

  def install
      inreplace "brew/boxtape", "##PREFIX##", "#{prefix}"
      prefix.install "lib"
      bin.install "bin/boxtape"
  end
end
