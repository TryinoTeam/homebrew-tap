class Ino < Formula
  desc "Ino Loyalty command line and local MCP server"
  homepage "https://github.com/TryinoTeam/ino-cli"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.6.0/ino-0.6.0-osx-arm64.tar.gz"
      sha256 "b8f9d549da74a0e4c27e00e3fed8fa4f584eb1c46a303f7d5a91a45b43ca3e54"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.6.0/ino-0.6.0-osx-x64.tar.gz"
      sha256 "3aa323e9fa980a412105d6d1dcf3352cc5cae59e5174e2f008a35c6a14c837be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.6.0/ino-0.6.0-linux-arm64.tar.gz"
      sha256 "26cfa925c0751855a566c828477cb67cbfe1cf52978040b297d46bc316ea94f2"
    else
      url "https://github.com/TryinoTeam/ino-cli/releases/download/v0.6.0/ino-0.6.0-linux-x64.tar.gz"
      sha256 "28824f9957ba48c3600f674aff7aaa5943653961a8818279ce09fc70921e897e"
    end
  end

  def install
    bin.install "ino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ino --version")
  end
end
