class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.2.0/ino-0.2.0-osx-arm64.tar.gz"
      sha256 "72ba508588c2c7a679926ede8ef684b6669ff81e7aee84d7e16c60a40ace0036"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.2.0/ino-0.2.0-osx-x64.tar.gz"
      sha256 "07393c49e6f533c0946e0d2d7f43b131996942c62cd55fbc89237d0b089c0e22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.2.0/ino-0.2.0-linux-arm64.tar.gz"
      sha256 "701310fbf5bc28667d7143c63be6900105fde23c356366444f26086326fc16e4"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.2.0/ino-0.2.0-linux-x64.tar.gz"
      sha256 "e034842cd89374cd74f33839011e142b1a1bec7ed64143f3d644ffba19252c66"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
