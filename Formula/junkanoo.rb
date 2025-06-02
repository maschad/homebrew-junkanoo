class Junkanoo < Formula
  desc "Decentralized ephemeral file sharing CLI browser"
  homepage "https://github.com/maschad/junkanoo"
  url "https://github.com/maschad/junkanoo/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "1e447133eb1b7033427b689c437e9f769b922ec8d89de5797e03859b2d3f7ee7"
  head "https://github.com/maschad/junkanoo.git", branch: "main"

  depends_on "rust" => :build

  def install
    bin.install "junkanoo"
  end

  test do
    system "#{bin}/junkanoo", "--version"
  end
end