class Junkanoo < Formula
  desc "Decentralized ephemeral file sharing CLI browser"
  homepage "https://github.com/maschad/junkanoo"
  url "https://github.com/maschad/junkanoo/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c036202138efc4f50f96d7687c25d09583313061ca690b056ef66d975ca29253"
  license "MIT"
  head "https://github.com/maschad/junkanoo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/junkanoo", "--version"
  end
end