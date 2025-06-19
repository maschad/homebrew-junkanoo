class Junkanoo < Formula
  desc "Decentralized ephemeral file sharing CLI browser"
  homepage "https://github.com/maschad/junkanoo"
  url "https://github.com/maschad/junkanoo/releases/download/v1.2.3/junkanoo-v1.2.3-x86_64-apple-darwin.tar.gz"
  sha256 "d35d64ae0b52f3a5bfe1b884b0a0a8540b04040af662cb2c8da4beb7760cc570"
  head "https://github.com/maschad/junkanoo.git", branch: "main"

  def install
    bin.install "junkanoo"
  end

  test do
    system bin/"junkanoo", "--version"
  end
end
