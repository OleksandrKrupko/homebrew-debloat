class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.12.1.tar.gz"
  sha256 "58672f14aafe64d31f2f4851bfe6af6a8fbbf8a91fd105f03b8f2cb96619c375"
  license "MIT"
  version "0.12.1"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.12.1", shell_output("#{bin}/debloat --version")
  end
end
