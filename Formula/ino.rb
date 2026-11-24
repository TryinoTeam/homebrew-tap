class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.1.0/ino-0.1.0-osx-arm64.tar.gz"
      sha256 "5c1bf991e9eacadd256f969822041ca3d9a21efb331d8908fffa0ebc6feae11b"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.1.0/ino-0.1.0-osx-x64.tar.gz"
      sha256 "b35619cf5801ba53b12d36e8a8b4c93f5748f8922f7dd4e3ec3e15763af1fe7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.1.0/ino-0.1.0-linux-arm64.tar.gz"
      sha256 "4700dfc1500003c2370821c6f4abaf51815b9413139ede570cebd84bbd08302b"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.1.0/ino-0.1.0-linux-x64.tar.gz"
      sha256 "b24be5fbba483414cbc544d048ee93137302758fdc9717e4564f77bf2f0fe49b"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
