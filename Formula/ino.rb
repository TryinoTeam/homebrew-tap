class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.3.0/ino-0.3.0-osx-arm64.tar.gz"
      sha256 "8b0675fc8488f0e8e0cc366415842325330e87acffdfcaf89abe597482fc828c"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.3.0/ino-0.3.0-osx-x64.tar.gz"
      sha256 "7d22148267a46b09dda3f068e792d60278251aaaa034e2f3fcfc9005814d8057"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.3.0/ino-0.3.0-linux-arm64.tar.gz"
      sha256 "5dbcd2f1f9708325e71cb3c586d2edef4186ccd0df4afa4b28fb6ff557901a39"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.3.0/ino-0.3.0-linux-x64.tar.gz"
      sha256 "a811ef277ea9c38e9bbc086005b12690dd9178824fb2e2378470cc232e2d42ff"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
