class Yourapp < Formula
  desc "Description of your app"
  homepage "https://github.com/matandomuertos/wordprinter"
  url "https://github.com/matandomuertos/wordprinter/archive/v1.0.1.tar.gz"
  sha256 "fb7d131cf26824dc186ff52fe3fb9c9f09fa018e9a16a8447fe4b2a283f6e38c"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wordprinter"
  end

  test do
    assert_match "hello", shell_output("#{bin}/wordprinter hello")
  end
end
