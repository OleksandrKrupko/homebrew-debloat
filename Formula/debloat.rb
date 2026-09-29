class Debloat < Formula
  desc "Console util to toggle macOS launchd services and the Spotlight index (frees RAM)"
  homepage "https://github.com/OleksandrKrupko/mac-os-debloat"
  url "https://github.com/OleksandrKrupko/mac-os-debloat/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "cd735daadd56c7fec704f9dee2c37c142f3b4bff787f0ba0dc0e2cb1870032c8"
  license "MIT"
  version "0.13.0"

  depends_on :macos

  def install
    bin.install "debloat"
  end

  test do
    assert_match "0.13.0", shell_output("#{bin}/debloat --version")
  end
end
