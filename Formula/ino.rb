class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.5.0/ino-0.5.0-osx-arm64.tar.gz"
      sha256 "bb824937a573d9109b74c43ae04637a0e4aa3cf3f0e85b677fc025f4e4fa168b"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.5.0/ino-0.5.0-osx-x64.tar.gz"
      sha256 "7f1f8e89e0b3d2907bbf1f9368c3df33b9d90b6b2da4f46284cfce65a84de240"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.5.0/ino-0.5.0-linux-arm64.tar.gz"
      sha256 "95a172b712673931ea56702d499ca2d6dc5160c872744c6ad279dcf0470ef4ed"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.5.0/ino-0.5.0-linux-x64.tar.gz"
      sha256 "c3d86ede478f7eeb680c8c49994ab51bacf18906cbb3a721fb7b5af13e8bf591"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
