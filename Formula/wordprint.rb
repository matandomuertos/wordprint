class Wordprint < Formula
  desc "A simple utility to print a word to the terminal"
  homepage "https://github.com/matandomuertos/wordprint"
  url "https://github.com/matandomuertos/wordprint/releases/download/v#{ENV["HOMEBREW_WORDPRINT_VERSION"] || "1.0"}/wordprint"
  sha256 ENV["HOMEBREW_WORDPRINT_SHA256"]

  def install
    bin.install "wordprint"
  end

  test do
    system "#{bin}/wordprint", "hello"
  end
end
