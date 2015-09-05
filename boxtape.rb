require "formula"

class Srcclr < Formula
  homepage "http://boxtape.io"
  url "https://download.sourceclear.com/console/srcclr-console-0.7.0.zip"

  def install
      inreplace "brew/srcclr", "##PREFIX##", "#{prefix}"
      prefix.install "srcclr-console.jar"
      bin.install "brew/srcclr"
  end
end
