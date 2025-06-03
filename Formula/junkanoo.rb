class Junkanoo < Formula
  desc "Decentralized ephemeral file sharing CLI browser"
  homepage "https://github.com/maschad/junkanoo"
  url "https://github.com/maschad/junkanoo/releases/download/v1.2.2/junkanoo"
  sha256 "433da011100899c8054a40572b0a8d77d8c4ae493e8306e1efb40d89fb5a6adc"
  head "https://github.com/maschad/junkanoo.git", branch: "main"

  def install
    bin.install "junkanoo"
  end

  test do
    system "#{bin}/junkanoo", "--version"
  end
end