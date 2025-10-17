class Bannify < Formula
  desc "Generate colorful ASCII art banners in your terminal"
  homepage "https://github.com/golovpeter/bannify"
  url "https://github.com/golovpeter/bannify/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "8ed8387d33c0b786fae4d101973dcd82d07cc6be752eaeb383562f27f5a86cfa"
  license "MIT"
  head "https://github.com/username/bannify.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bannify -v")

    # Проверяем, что программа работает
    output = shell_output("#{bin}/bannify -t TEST 2>&1")
    assert_match "TEST", output
  end
end
