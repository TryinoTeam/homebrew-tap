class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.8.0/ino-0.8.0-osx-arm64.tar.gz"
      sha256 "7a2c38c0cc6ee0c3c9ba590eac936200d0daa394ed2ec6613f181afa8cd9d5c7"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.8.0/ino-0.8.0-osx-x64.tar.gz"
      sha256 "3202bdb352a946249ae9de1bf325abca317999ae402f607c6425f29d8cac0e12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.8.0/ino-0.8.0-linux-arm64.tar.gz"
      sha256 "d2fc3c94ae670d43a39aae19ae5bb937627a339851cc7d25448d630897982523"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.8.0/ino-0.8.0-linux-x64.tar.gz"
      sha256 "3d4223b459abff86d460dd23bbc3c9645e90df2cfc7268438f442199f44657a3"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
