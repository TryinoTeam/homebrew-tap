class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.4.0/ino-0.4.0-osx-arm64.tar.gz"
      sha256 "0f2b513a319622485d20ebd418cb9ebcef0a30cf1fbb7c5f06a5876159a3f386"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.4.0/ino-0.4.0-osx-x64.tar.gz"
      sha256 "7f2f1d8aaacf4385655dd93b4322b8a8d9605681e309a4bf939c149b57bfcb24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.4.0/ino-0.4.0-linux-arm64.tar.gz"
      sha256 "4c1ad87ff186b4c8f3cb514035fb3687691e66d1b9b97878c19d4f6f664456a1"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.4.0/ino-0.4.0-linux-x64.tar.gz"
      sha256 "2b7f0156fd60344b3ac8cbd1f29b4676cc3b0bd5a0ac2c9c2890970520c84964"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
