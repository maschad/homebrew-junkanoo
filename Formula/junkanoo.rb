class Junkanoo < Formula
  desc "Decentralized ephemeral file sharing CLI browser"
  homepage "https://github.com/maschad/junkanoo"
  url "https://github.com/maschad/junkanoo/releases/download/v1.2.2/junkanoo"
  sha256 "3198bb7dbb482ed87a439d030a68db01e88eeffdbffb9a829739b0bfcd1b665b"
  head "https://github.com/maschad/junkanoo.git", branch: "main"

  def install
    bin.install "junkanoo"
  end

  test do
    system bin/"junkanoo", "--version"
  end
end
